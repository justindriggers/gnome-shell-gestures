#!/bin/sh

dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'
if (Main.overview.visible) {
	if (Main.overview.viewSelector._showAppsButton.checked) {
		Main.overview.viewSelector._showAppsButton.checked = false;
	} else {
		Main.overview.hide();
	}
} else {
	Main.overview.show();
}
'
