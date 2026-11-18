fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'slefan'
description 'Complete Driveable Train System for RedM'
version '0.0.1'

shared_script 'config.lua'
client_script 'client.lua'
server_script 'server.lua'

ui_page('ui/index.html')

files{
    'ui/index.html',
    'ui/style.css',
    'ui/script.js'
}