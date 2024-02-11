include("shared.lua")

local allowed = {}
-- this is here to prevent errors from appearing from trying to open the spawn menu, the original code had a part
-- for allowing certain steam id, which I do not need, and i cannot be bothered fixing it

hook.Add("SpawnMenuOpen", "SpawnMenuWhitelist", function()
	if (!allowed[LocalPlayer():SteamID()]) then
		return false
	end
end)

-- client side commands

-- leftover from when i had music

-- concommand.Add( "gmdm_music", function( ply, cmd, args, str )
--     sound.PlayFile( "sound/music/HL2_song14.mp3", "noplay", function( station, errCode, errStr )
--         if ( IsValid( station ) ) then
--             station:Play()
--         else
--             print( "Error playing sound!", errCode, errStr )
--         end
--     end )
-- end)

-- concommand.Add( "gmdm_music_stop", function( ply, cmd, args, str ) 
-- 	ply:StopSound ("sound/music/HL2_song14.mp3")
-- end)