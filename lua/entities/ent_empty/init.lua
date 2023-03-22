AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:SetSnakeEntityPhys(snakeEntity, snakeEntityPhys)
    self.snakeEntityPhys = snakeEntityPhys
    self.snakeEntity = snakeEntity
    self:SetParent(snakeEntity)
    self:SetPos(snakeEntity:GetPos())
    self:SetCollisionGroup(COLLISION_GROUP_WORLD)

    timer.Simple(1, function()
        self.snakeEntity:SetCollisionGroup(COLLISION_GROUP_NONE)
    end)

    self:NextThink(CurTime() + 3)
    return true
end

function ENT:Think()
    if (not IsValid(self.snakeEntityPhys) or not IsValid(self.snakeEntity)) then return end

    local closestPlayer = nil;

    for i, v in pairs(ents.FindInSphere(self:GetPos(), SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_target_range)) do
        if (v.IsPlayer() and v:IsLineOfSightClear(self) and v:Alive() and v:GetObserverMode() == OBS_MODE_NONE) then
            if (closestPlayer == nil) then
                closestPlayer = v;
            else
                if ((v:GetPos() - self:GetPos()):Length() < (closestPlayer:GetPos() - self:GetPos()):Length()) then
                    closestPlayer = v;
                end
            end
        end
    end

    if (closestPlayer ~= nil) then
        local velocity = closestPlayer:GetPos() - self:GetPos()
        velocity:Normalize()
        self.snakeEntityPhys:ApplyForceCenter(velocity * SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_impulse_strength * 1000)
        self.lastTargetHealth = closestPlayer:Health()

        self:NextThink(CurTime() + 2)
        return true
    end

    self:NextThink(CurTime() + 1 / 10)
    return true
end