--[[
########################################################################
#                               Shadow                                 #
#                        Created on 2-09-2022                          #
#                    https://discord.gg/wcwheSZbCX                     #
#                           Xprotect.Games                             #
#                                                                      #
########################################################################
--]]

author 'Shadow'
description 'Shadow Notify'
version '1.0.0'
url 'https://discord.gg/wcwheSZbCX'

-- Server Scripts
server_scripts {
    'server.lua'
} 

--Client Scripts
client_scripts {
    'client.lua'
}

--Files
files {
    'ui/app.js',
    'ui/ui.html',
    'ui/app.css'
}

--UI
ui_page 'ui/ui.html'

game 'gta5'
fx_version 'cerulean'
