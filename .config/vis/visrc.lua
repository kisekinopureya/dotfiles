-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme dark-16')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set number')
	vis:command('set autoindent')
	vis:command('set show-eof off')
	vis:command('set show-newlines')
	vis:command('set show-tabs')
end)
