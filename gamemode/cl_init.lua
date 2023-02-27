include( "shared.lua" )

local allowed = {}
-- this is here to prevent errors from appearing from trying to open the spawn menu, the original code had a part
-- for allowing certain steam id, which I do not need

hook.Add( "SpawnMenuOpen", "SpawnMenuWhitelist", function()
	if ( !allowed[ LocalPlayer():SteamID() ] ) then
		return false
	end
end )