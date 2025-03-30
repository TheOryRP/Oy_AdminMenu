fx_version 'cerulean'  
game 'gta5'  
author 'Useful Scripts'  
description 'Admin Menu for FiveM'  
version '1.0.0'  

client_scripts {  
    'client.lua'  
}  

server_scripts {  
    '@mysql-async/lib/MySQL.lua',  
    'server.lua'  
}  

ui_page 'html/index.html'  

files {  
    'html/index.html',  
    'html/style.css',  
    'html/script.js'  
}  
