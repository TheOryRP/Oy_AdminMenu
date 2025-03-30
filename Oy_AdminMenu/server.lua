ESX = exports["es_extended"]:getSharedObject()  

local AdminGroups = {"superadmin", "admin", "mod"}  

RegisterCommand("admin", function(source)  
    local xPlayer = ESX.GetPlayerFromId(source)  
    if xPlayer then  
        for _, group in ipairs(AdminGroups) do  
            if xPlayer.getGroup() == group then  
                TriggerClientEvent("adminMenu:open", source)  
                return  
            end  
        end  
    end  
    TriggerClientEvent("esx:showNotification", source, "You don't have permission to open admin menu.")  
end, false)  

RegisterServerEvent("adminMenu:banPlayer")  
AddEventHandler("adminMenu:banPlayer", function(target, reason)  
    local xTarget = ESX.GetPlayerFromId(target)  
    if xTarget then  
        local identifier = xTarget.identifier  
        MySQL.Async.execute("INSERT INTO bans (identifier, reason) VALUES (@identifier, @reason)", {  
            ['@identifier'] = identifier,  
            ['@reason'] = reason  
        })  
        DropPlayer(target, "You have been banned. Reason: " .. reason)  
    end  
end)  

RegisterServerEvent("adminMenu:kickPlayer")  
AddEventHandler("adminMenu:kickPlayer", function(target, reason)  
    DropPlayer(target, "You have been kicked. Reason: " .. reason)  
end)  

RegisterServerEvent("adminMenu:getInventory")  
AddEventHandler("adminMenu:getInventory", function(target)  
    local xTarget = ESX.GetPlayerFromId(target)  
    if xTarget then  
        TriggerClientEvent("adminMenu:showInventory", source, xTarget.getInventory())  
    end  
end)  

RegisterServerEvent("adminMenu:getPlayers")  
AddEventHandler("adminMenu:getPlayers", function()  
    local players = {}  
    for _, playerId in ipairs(GetPlayers()) do  
        table.insert(players, {id = playerId, name = GetPlayerName(playerId)})  
    end  
    TriggerClientEvent("adminMenu:sendPlayers", source, players)  
end)  
