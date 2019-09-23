colorencode_updateInterval = 1.0
colorencode_sinceLastUpdate = 1.0


function onload(self)
    print(GetAddOnMetadata("TestAddon", "Title") .. " v" .. GetAddOnMetadata("TestAddon", "Version") .. " loaded");
end


function onupdate(self, elapsed)
    colorencode_sinceLastUpdate = colorencode_sinceLastUpdate + elapsed;  
    if (colorencode_sinceLastUpdate > colorencode_updateInterval) then
        -- CODE
        updateCoor()

        colorencode_sinceLastUpdate = 0;
    end
end


function updateCoor()
    local mapID = C_Map.GetBestMapForUnit("player")

    local position = C_Map.GetPlayerMapPosition(mapID, "player")
    local azimuth = GetPlayerFacing()

    position.x = math.floor(position.x * 10000) / 100
    position.y = math.floor(position.y * 10000) / 100
    azimuth = math.floor(azimuth * 1000) / 1000


    TestAddon_MainFrame_xCoorNum:SetText(position.x)
    TestAddon_MainFrame_yCoorNum:SetText(position.y)
    TestAddon_MainFrame_azimuthNum:SetText(azimuth)
end
