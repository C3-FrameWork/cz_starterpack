-- like server.lua
local firstTimeJoining = {}

RegisterServerEvent('playerJoined')
AddEventHandler('playerJoined', function()
    local playerId = source

    if not firstTimeJoining[playerId] then
        firstTimeJoining[playerId] = true
        GiveStartingItems(playerId)
    end

    local playerName = GetPlayerName(playerId)
    TriggerClientEvent('displayWelcomeMessage', playerId, playerName)
end)

function GiveStartingItems(playerId)
    TriggerClientEvent('givePlayerItem', playerId, 'phone', 1, true, true) 
    TriggerClientEvent('givePlayerItem', playerId, 'bread', 10) 
    TriggerClientEvent('givePlayerItem', playerId, 'water', 10) 
end


RegisterCommand('pomoc', function(source, args, rawCommand)
    local player = tonumber(source)
    TriggerClientEvent('displayHelpMessage', player)
end)

print('made by !!Its_Cehic#9999')
