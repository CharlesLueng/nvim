let g:which_key_language['dart'] = {
			\ 'r': [':CocCommand flutter.run', 'run'],
			\ 'a': [':CocCommand flutter.attach', 'attach'],
			\ 'c': [':CocCommand flutter.create', 'create'],
			\ 'D': [':CocCommand flutter.doctor', 'doctor'],
			\ 'l': [':CocCommand flutter.devices', 'devices-list'],
			\ 'p': [':CocCommand flutter.pub.get', 'pub-get'],
			\ 'u': [':CocCommand flutter.upgrade', 'upgrade'],
			\ 'e': [':CocCommand flutter.emulators', 'emulators'],
			\ 'g': [':CocCommand flutter.gotoSupper', 'goto'],
			\ 'd': {
			\ 'name': '+Dev',
			\ 'q': [':CocCommand flutter.dev.quit', 'quit'],
			\ 'd': [':CocCommand flutter.dev.detach', 'detach'],
			\ 'h': [':CocCommand flutter.dev.hotReload', 'hot-reload'],
			\ 'l': [':CocCommand flutter.dev.openDevLog', 'open-log'],
			\ 'H': [':CocCommand flutter.dev.hotRestart', 'hot-restart'],
			\ 's': [':CocCommand flutter.dev.screenshot', 'screen-shot'],
			\ 'c': [':CocCommand flutter.dev.clearDevLog', 'clear-log'],
			\}
			\}
