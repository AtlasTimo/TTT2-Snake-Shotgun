hook.Add("EntityTakeDamage", "SnakeDamageCheck", function(target, dmg)
    local attacker = dmg:GetAttacker()
    if (IsValid(target) and target:GetName() ~= "ttt_snake_gun_snake" and IsValid(attacker) and attacker:GetName() == "ttt_snake_gun_snake") then
        dmg:SetDamage(SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_damage * 3)
    elseif ((dmg:IsBulletDamage() or dmg:IsExplosionDamage()) and target:GetName() == "ttt_snake_gun_snake") then
        local snakeHealth = target:GetNWInt("health", SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_health)
        snakeHealth = snakeHealth - dmg:GetDamage()
        if (snakeHealth <= 0) then
            target:Remove()
        else
            target:SetNWInt("health", snakeHealth)
        end
    end
end)