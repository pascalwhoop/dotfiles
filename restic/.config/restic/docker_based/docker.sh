#!/bin/bash
PW=$(pass show general/restic_repository)
docker run -e RESTIC_PASSWORD="$PW" -h mbp -v /Users/pascal_brokmeier:/host  --rm pascalwhoop/restic /host/.config/restic/docker_based/run.sh
