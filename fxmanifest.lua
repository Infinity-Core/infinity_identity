game 		 'rdr3'
fx_version 	 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 	     'ALTITUDE-DEV.COM'
description  'infinitycore Identity module for Make Identity Sync with Skin and Core'
version 	 '1.0.0'
infinitycore_dev 	    'Shepard & iireddev'


ui_page "html/core.html"

files {
    'html/core.html',
    'html/core.js',
	'html/*.jpeg',
	'html/*.jpg',
	'html/vendor/*.css',
	'html/vendor/*.js',
	'html/fonts/*.eot',
	'html/fonts/*.ttf',
	'html/fonts/*.woff',
	'html/fonts/*.woff2',
    'html/core.css'
}

client_scripts {
	'config.lua',
	'cl_check.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'config.lua',
	'sv_check.lua'
}