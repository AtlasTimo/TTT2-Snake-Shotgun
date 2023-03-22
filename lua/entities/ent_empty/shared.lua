ENT.Type = "anim"
ENT.Base = "base_anim"
 
ENT.PrintName = "Snake"

function ENT:Initialize()
	self:SetModel("models/snake_gun/empty/empty.mdl")
	self:PhysicsInit(SOLID_NONE)
	self:SetSolid( SOLID_NONE ) 
	self:SetMoveType( MOVETYPE_NONE )
	self:DrawShadow(false)
end