Citizen.CreateThread(function()
    while true do

        local PlayerName = GetPlayerName(PlayerId())
        local PlayerID = GetPlayerServerId(PlayerId())

        local appID = -- YOUR APP-ID HERE
        local bigPicture = 'big'

        SetDiscordAppId(appID)

        SetRichPresence('Name: ' .. PlayerName .. ' | ID: ' .. PlayerID ..)
        
        SetDiscordRichPresenceAsset(bigPicture)
        SetDiscordRichPresenceAssetText("YOUR SERVER NAME HERE")

        -- BUTTONS [Max Buttons: 2]

        setDiscordRichPresenceAction(0, "Discord", 'https://larrox.xyz/discord') -- REPLACE https://larrox.xyz/discord with your discord
        setDiscordRichPresenceAction(1, "FiveM", 'https://cfx.re/join/example') -- REPLACE example WITH YOUR SERVER CONNECT ID

        Citizen.Wait(1000)

end)