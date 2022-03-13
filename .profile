# global settings
ulimit -c 0
MANPATH="/usr/X11R6/man:/usr/share/man:/usr/local/share/man:/usr/local/man"
LC_ALL=en_US.UTF-8
PATH=$PATH:$HOME/.local/bin:$HOME/.local/bin/statusbar
EDITOR=vise # vis = vise on OpenBSD
export MANPATH LC_ALL PATH EDITOR

# browser settings
BROWSER="surf"
SEARCH_ENGINE="search.disroot.org"
SEARCHIST="0"
SEARCHISTFILE="$HOME/.cache/searchist"
URLHIST="0"
URLHISTFILE="$HOME/.cache/urlhist"
BOOKMARKFILE="$HOME/.cache/bookmarks"
export BROWSER SEARCH_ENGINE SEARCHIST SEARCHISTFILE URLHIST URLHISTFILE BOOKMARKFILE

# ksh settings
ENV=$HOME/.kshrc
HISTFILE="$HOME/.cache/histfile"
HISTSIZE=100
export ENV HISTFILE HISTSIZE

# monitor settings
# single monitor users should comment all variables below and export NODUALMONITOR=1
FIRSTMONITOR="HDMI-1"
FIRSTMONITORRES="1920x1080"
FIRSTMONITORRATE="120"
SECONDMONITOR="VGA-1"
SECONDMONITORRES="1920x1080"
SECONDMONITORRATE="60"
export FIRSTMONITOR FIRSTMONITORRES FIRSTMONITORRATE SECONDMONITOR SECONDMONITORRES SECONDMONITORRATE
