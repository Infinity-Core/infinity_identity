RegisterNetEvent("moutain_identity:make_character")
AddEventHandler("moutain_identity:make_character", function(source, firstname, lastname, nationality, years, sex)
    local SourceSteamID     = exports.infinity_core:GetPlayerSource(source)
    if SourceSteamID then
        exports.oxmysql:prepare('SELECT * FROM players WHERE steam_identifier = ? AND charid = ?', {SourceSteamID, 1}, function(result)
            if result.steam_identifier then
                exports.oxmysql:prepare('UPDATE players SET lastname = ?, firstname = ?, nationality = ?, years = ?, sex = ? WHERE steam_identifier = ? AND charid = ?', { lastname, firstname, nationality, years, sex, result.steam_identifier, 1 }, function(resultFind)
                    exports.infinity_core:notification(-1 ," A new citizen has joined ", "<b class='text-danger'>"..firstname.." "..lastname.."</b>","center_right","infinitycore", 3000)
                end)
                if Config.DiscordEnable then
                    PerformHttpRequest(Config.WebhookURI, function(err, text, headers) end, 'POST', 
                    json.encode({
                        embeds={
                            {
                                title       = "INFINITYCORE", 
                                description = firstname.." "..lastname.." with "..years.." From "..nationality.." New in the server ! ", 
                                footer = { 
                                    text = "api check server running"
                                },color  = "#605de1"
                            }
                        }}),
                    { ['Content-Type'] = 'application/json' })
                end
            end
        end)
    end
end)