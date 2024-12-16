local LuaMonke, Enum, Debug, Gorilla, Room, TargetVersion = require("monke"), "0.0.1"

if LuaMonke.version ~= TargetVersion then print("This example was made for LuaMonke " .. TargetVersion .. ", you may run into trouble") end

while true do
    Gorilla.Color.Code[1] = math.random(0, 9)
    Gorilla.Color.Code[2] = math.random(0, 9)
    Gorilla.Color.Code[3] = math.random(0, 9)
    wait(0.1)

    if not Gorilla.VRActive == Enum.VRActive.VRActive then break end
end