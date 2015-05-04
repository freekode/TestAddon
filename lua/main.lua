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
    SetMapToCurrentZone();

    local x, y = GetPlayerMapPosition("player")
    local azimuth = GetPlayerFacing()
    local pitch = GetUnitPitch("player")

    x = math.floor(x * 10000) / 100
    y = math.floor(y * 10000) / 100
    azimuth = math.floor(azimuth * 1000) / 1000
    pitch = math.floor(pitch * 100) / 100
    

    TestAddon_MainFrame_xCoorNum:SetText(x)
    TestAddon_MainFrame_yCoorNum:SetText(y)
    TestAddon_MainFrame_azimuthNum:SetText(azimuth)
    TestAddon_MainFrame_pitchNum:SetText(pitch)
end
