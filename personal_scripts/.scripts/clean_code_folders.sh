#!/bin/bash

# Default folders to delete
FOLDERS=(
  "node_modules"
  "__pycache__"
  ".venv"
  ".mypy_cache"
  ".pytest_cache"
  ".egg-info"
  ".next"
  ".cache"
  "dist"
  "build"
)

TARGET_DIR="."
DRY_RUN=0

print_help() {
  echo "Usage: $0 [options]"
  echo ""
  echo "Options:"
  echo "  -t, --target DIR       Target directory to clean (default: current directory)"
  echo "  -a, --add FOLDER       Add a folder name to delete (can be used multiple times)"
  echo "  -d, --dry-run          Show folders that would be deleted without deleting"
  echo "  -h, --help             Show this help message"
  echo ""
  echo "Example:"
  echo "  $0 -t /path/to/project -a temp -d"
  echo ""
  echo "Note: Requires 'dust' CLI installed (https://github.com/bootandy/dust)"
}

# Parse CLI arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    -t|--target)
      TARGET_DIR="$2"
      shift 2
      ;;
    -a|--add)
      FOLDERS+=("$2")
      shift 2
      ;;
    -d|--dry-run)
      DRY_RUN=1
      shift
      ;;
    -h|--help)
      print_help
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      print_help
      exit 1
      ;;
  esac
done

# Build regex pattern for fd/find
PATTERN=$(IFS="|"; echo "${FOLDERS[*]}")

echo "Target directory: $TARGET_DIR"
echo "Cleaning folders matching: $PATTERN"
if [[ $DRY_RUN -eq 1 ]]; then
  echo "Dry run mode - no folders will be deleted."
fi

# Show size before cleanup if dust is available
if command -v dust >/dev/null 2>&1; then
  echo ""
  echo "Disk usage before cleanup:"
  dust -d 1 "$TARGET_DIR"
  echo ""
else
  echo "Note: 'dust' CLI not found. Skipping disk usage before cleanup."
fi

# Find and delete folders or show dry run list
if [[ $DRY_RUN -eq 1 ]]; then
  echo "Folders that would be deleted:"
  if command -v fd >/dev/null 2>&1; then
    fd -HI -t d --prune "$PATTERN" "$TARGET_DIR"
  else
    find "$TARGET_DIR" -type d \( $(printf -- '-name "%s" -o ' "${FOLDERS[@]}" | sed 's/ -o $//') \)
  fi
else
  if command -v fd >/dev/null 2>&1; then
    fd -HI -t d --prune "$PATTERN" "$TARGET_DIR" | xargs -r rm -rf
  else
    find "$TARGET_DIR" -type d \( $(printf -- '-name "%s" -o ' "${FOLDERS[@]}" | sed 's/ -o $//') \) -exec rm -rf {} +
  fi
  echo ""
  echo "Deletion complete."
  # Show size after cleanup if dust is available
  if command -v dust >/dev/null 2>&1; then
    echo ""
    echo "Disk usage after cleanup:"
    dust -d 1 "$TARGET_DIR"
  else
    echo "Note: 'dust' CLI not found. Skipping disk usage after cleanup."
  fi
fi

