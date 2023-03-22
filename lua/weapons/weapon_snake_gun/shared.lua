SWEP.PrintName			= "Snake Shotgun"
SWEP.Author				= "Atlas"
SWEP.Instructions		= "Shoots killer snakes!"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo		= "none"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false
SWEP.Slot				= 1
SWEP.SlotPos			= 2
SWEP.DrawAmmo			= true
SWEP.DrawCrosshair		= true

SWEP.HoldType 	= "shotgun"
SWEP.ViewModelFOV = 40
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/snake_gun/c_snake_gun/c_snake_gun.mdl"
SWEP.WorldModel = "models/snake_gun/w_snake_gun/w_snake_gun.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true

SWEP.Icon 		= "VGUI/ttt/weapon_snake_shotgun.png"

SWEP.Base 			= "weapon_tttbase"
SWEP.Kind 			= WEAPON_EQUIP2
SWEP.AutoSpawnable 	= false
SWEP.AmmoEnt 		= "item_ammo_ttt"

SWEP.CanBuy = {ROLE_TRAITOR}
SWEP.InLoadoutFor 	= nil
SWEP.LimitedStock 	= true
SWEP.AllowDelete 	= false
SWEP.AllowDrop 		= true

if CLIENT then
	SWEP.EquipMenuData = {
		type = "Weapon",
		desc = "Shoots killer snakes!"
	};
end
