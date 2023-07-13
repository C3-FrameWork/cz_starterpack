--- client side of script.

--RegisterNetEvent('displayHelpMessage')
--AddEventHandler('displayHelpMessage', function()
--    TriggerEvent('chat:addMessage', {
        --color = {255, 255, 0},
      --  multiline = true,
    --    args = {'[CZ]', 'Pozdravljeni na moj strežnik, tukaj je uporabna komanda:\n/help - Sporočilo za pomoč.\n...'}
  --  })   ------ Stara koda! / Old code!
--end)

RegisterNetEvent('displayWelcomeMessage')
AddEventHandler('displayWelcomeMessage', function(playerName)
    TriggerEvent('chat:addMessage', {
        color = {255, 255, 0},
        multiline = true,
        args = {'[CZ]', 'Pozdravljeni, ' .. playerName .. '! Uživajte vaš čas ob igranju na Strežniku.'}
    })
end)

RegisterNetEvent('displayHelpMessage')
AddEventHandler('displayHelpMessage', function()
    TriggerEvent('chat:addMessage', {
        color = {255, 255, 0},
        multiline = true,
        args = {'[CZ]', 'Pozdravljeni na moj strežnik, videl sem da si uporabil komando /help! \n Če rabite pomoč pridite sem notri: discord.gg/ZP4nEKadK3 '}
    })
end)

RegisterNetEvent('givePlayerItem')
AddEventHandler('givePlayerItem', function(itemName, amount, weight, holster)
    TriggerServertEvent('givePlayerItem', playerId, 'phone', 1, true, true) 
    TriggerServerEvent('givePlayerItem', playerId, 'bread', 10) 
    TriggerServerEvent('givePlayerItem', playerId, 'water', 10) 
end)
