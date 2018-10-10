#!/bin/bash

function fixbt(){
    pulseaudio -k && pulseaudio --start
    systemctl restart bluetooth
}
