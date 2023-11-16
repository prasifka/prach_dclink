AddEventHandler("playerConnecting", function()
    local identifiers = GetPlayerIdentifiers(source)
    local rockstarLicense = ""
    local discordID = ""

    for _, identifier in ipairs(identifiers) do
        if string.find(identifier, "license:") then
            rockstarLicense = string.gsub(identifier, "license:", "")
        elseif string.find(identifier, "discord:") then
            discordID = string.gsub(identifier, "discord:", "")
        end

        if rockstarLicense ~= "" and discordID ~= "" then
            break
        end
    end

    if rockstarLicense ~= "" then
        local playerName = GetPlayerName(source)

        exports['oxmysql']:update("UPDATE users SET discord = ? WHERE identifier LIKE ?", {discordID, "%"..rockstarLicense}, function(affectedRows, err)
            print("Player: " .. playerName)
            print("DCID: " .. discordID)
            print("RL: " .. rockstarLicense)

            if err then
                print("DB Save Error: " .. err)
            elseif affectedRows > 0 then
                print("DCID saved: " .. playerName)
            else
                print("DCID wasnt changed: " .. playerName)
            end
        end)
    else
        print("RL Error: " .. GetPlayerName(source))
    end
end)
