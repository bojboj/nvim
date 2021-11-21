local home = os.getenv('HOME')
local dap = require('dap')

dap.adapters.php = {
	type = 'executable',
	command = 'node',
	args = {home..'/.config/nvim/tooling/vscode-php-debug/out/phpDebug.js'}
}

require('dap.ext.vscode').load_launchjs()
