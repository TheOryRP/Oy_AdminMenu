RegisterNetEvent("adminMenu:open")  
AddEventHandler("adminMenu:open", function()  
    SetNuiFocus(true, true)  
    SendNUIMessage({ action = "openAdminMenu" })  
end)  

RegisterNUICallback("close", function()  
    SetNuiFocus(false, false)  
end)  

RegisterNUICallback("banPlayer", function(data)  
    TriggerServerEvent("adminMenu:banPlayer", data.target, data.reason)  
end)  

RegisterNUICallback("kickPlayer", function(data)  
    TriggerServerEvent("adminMenu:kickPlayer", data.target, data.reason)  
end)  

RegisterNUICallback("getInventory", function(data)  
    TriggerServerEvent("adminMenu:getInventory", data.target)  
end)  

RegisterNetEvent("adminMenu:showInventory")  
AddEventHandler("adminMenu:showInventory", function(inventory)  
    SendNUIMessage({ action = "showInventory", inventory = inventory })  
end)  

RegisterNetEvent("adminMenu:sendPlayers")  
AddEventHandler("adminMenu:sendPlayers", function(players)  
    SendNUIMessage({ action = "updatePlayerList", players = players })  
end)  
