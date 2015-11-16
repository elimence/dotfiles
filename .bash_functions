#!/bin/bash

df-tail_logs() {
	sudo tail -f /edx/var/log/{nginx}/*log
}

mkd() {
	mkdir -p "$@" && cd "$_"
}

# help menu
df-help() {
}



