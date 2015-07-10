#!/bin/sh

dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'
if (Main.overview.visible) {
	if (Main.overview.viewSelector._showAppsButton.checked) {
		Main.overview.viewSelector._showAppsButton.checked = false;
	} else {
		let [stageX, stageY] = global.get_pointer();
		let actor = global.stage.get_actor_at_pos(1, stageX, stageY);
		Main.activateWindow(actor._delegate.metaWindow);
	}
} else {
	Main.overview.show();
}
'
