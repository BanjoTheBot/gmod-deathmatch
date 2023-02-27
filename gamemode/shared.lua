GM.Name = "Garry's Mod Deathmatch"
GM.Author = "BanjoTheBirb"
GM.Email = "N/A"
GM.Website = "N/A"

-- just in case
DeriveGamemode ("sandbox")

function GM:Initialize()
	
end

local function reload()
    RunConsoleCommand("gmod_admin_cleanup")
end

local function text()
    PrintMessage(HUD_PRINTTALK "All weapons and props have been returned to their places!")
end

local function yes( )
    timer.Create( "UniqueName1", 5, 0, function() reload() end)
    timer.Create( "UniqueName2", 5, 0, function() text() end)
end

hook.Add( "Initialize", "Timer Example", reload )
    