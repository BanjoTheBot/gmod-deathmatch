GM.Name = "Garry's Mod Deathmatch"
GM.Author = "BanjoTheBirb"
GM.Email = "N/A"
GM.Website = "N/A"

-- just in case
DeriveGamemode ("sandbox")

function GM:Initialize()

end
	
    local function clean()
        RunConsoleCommand("gmod_admin_cleanup")
    end

    local function text()
        PrintMessage(HUD_PRINTTALK, "All weapons and props have been returned to their places!")
    end

    local function yes()
        timer.Create( "UniqueName1", 300, 0, clean )
        timer.Create( "UniqueName2", 300, 0, text )
    end

hook.Add( "Initialize", "Timer Example", yes )
        
