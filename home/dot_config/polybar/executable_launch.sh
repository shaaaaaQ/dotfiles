#!/bin/bash

theme="aaa"

killall -q polybar

polybar main -c ~/.config/polybar/theme/${theme}/config &
