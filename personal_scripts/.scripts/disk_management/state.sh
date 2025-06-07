#!/bin/bash

date
hdparm -C /dev/sd{a,b,c,d} | grep state

