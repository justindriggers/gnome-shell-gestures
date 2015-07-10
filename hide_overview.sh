#!/bin/sh

dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'
if (!Main.overview.viewSelector._showAppsButton.checked) {
	Main.overview.hide();
}
'
