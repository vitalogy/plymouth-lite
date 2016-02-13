#!/bin/sh

/usr/bin/echo 0 > /sys/class/graphics/fbcon/cursor_blink
/usr/bin/echo 0 > /sys/devices/virtual/graphics/fbcon/cursor_blink
/usr/bin/chvt 7
