SLASH_COLORENCODE1 = '/testaddon';
SlashCmdList["COLORENCODE"] = function(msg, editbox)
    if msg == "show" then
        MainFrame:Show()
    elseif msg == "hide" then
        MainFrame:Hide()
    elseif msg == "coor" then
        printCoordinates()
    end
end


function printCoordinates()
    local x, y = GetPlayerMapPosition("player")
    local pitch = GetUnitPitch("player")
    local azimyth = GetPlayerFacing()

    x = string.format("%.6f", x)
    y = string.format("%.6f", y)
    pitch = string.format("%.3f", pitch)
    azimyth = string.format("%.5f", azimyth)

    print("x=[" .. x .. "]; y=[" .. y .. "]; pitch=[" .. pitch .. "]; azimyth=[" .. azimyth .. "]")
end