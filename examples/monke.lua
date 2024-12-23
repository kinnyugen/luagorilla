-- LuaMonke 0.0.1
-- (C) Copyright 2024 - 2025 KinNyugen
-- MIT License. See LICENSE for 

local LuaMonke = {
    version = "0.0.1", -- incase u wanna check metadata
}

local Enum = {
    VRRigType = {
        Offline = "vrrigtype.offline",
        Online = "vrrigtype.online",
    },
    VRActive = {
        VRActive = "vractive.true",
        VRInactive = "vractive.false",
    },
    Gamemode = {
        Casual = "gamemode.casual",
        Infection = "gamemode.tag",
        Hunt = "gamemode.hunt",
        Paintbrawl = "gamemode.paint",

        -- "special" modes
        Guardian = "gamemode.guardian",
        FreezeTag = "gamemode.freeze",

        None = "gamemode.offline",
    },
    LobbyType = {
        Public = "lobbytype.public",
        Private = "lobbytype.private",

        None = "lobbytype.offline",
    }
}

local Debug = {
    -- placeholder class for Debug.Log

    Log = function(text)
        if not type(text) == string  then
            return 1
        end

        print(text)
        return 0
    end,
}

local Gorilla = {} -- Equivalent to GorillaLocomotion

-- vars
Gorilla.VRRigType = Enum.VRRigType.Offline -- toggles GorillaLocomotion.Player.offlineVRRig
Gorilla.VRActive = Enum.VRActive.VRActive -- if movement is happening to the GorillaPlayer
Gorilla.Name = "gorilla0000"

Gorilla.Color = {
    Code = {0, 0, 0},-- the Color Code  (0-9) of the Gorilla
    RGB = {0, 0, 0}, -- the RGB code (0-255) of the Gorilla
}

local Room = {}

Room.Gamemode = Enum.Gamemode.None -- gamemode
Room.Lobby = nil -- lobby code (nil when not in a lobby)
Room.LobbyType = Enum.LobbyType.None
Room.Players = {} -- table of all players in the code
Room.PlayerCount = #Room.Players -- # of players

return LuaMonke, Enum, Debug, Gorilla, Room