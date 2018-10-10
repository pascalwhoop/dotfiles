import os, subprocess, sys

version = sys.argv[1]


pts = os.listdir('/dev/pts/')
for each_pts in pts:
     if each_pts.isdigit():
         subprocess.call('echo "`dynamic-colors switch solarized-{0}`" > /dev/pts/{1}'.format(version,each_pts), shell=True)
