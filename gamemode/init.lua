AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function GM:PlayerSpwan(ply)

    return true
end

function GM:PlayerLoadout(ply)
    ply:SetMaxHealth(100)
    ply:SetArmor(25)
    ply:SetMaxArmor(100)
    ply:Give("weapon_crowbar")
    ply:Give("weapon_physcannon")
    ply:Give("weapon_pistol")
    ply:Give("weapon_smg1")
    ply:GiveAmmo(100, "Pistol", true)
    ply:GiveAmmo(150, "SMG1", true) 
end