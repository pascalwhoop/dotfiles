#!/bin/bash
#requires v4l2loopback-dkms
IP=${1:-"192.168.1.211"}
echo "asking for root to install the loopback camera dev"
sudo modprobe v4l2loopback
ffmpeg -i "http://$IP:8080"  -vcodec rawvideo -pix_fmt yuv420p -f v4l2 /dev/video0
sudo modprobe -r v4l2loopback

