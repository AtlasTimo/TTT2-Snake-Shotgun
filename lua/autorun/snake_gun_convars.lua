SNAKE_SHOTGUN = SNAKE_SHOTGUN or {}
SNAKE_SHOTGUN.CVARS = SNAKE_SHOTGUN.CVARS or {}

local snake_shotgun_magazine_size = CreateConVar("ttt_snake_shotgun_magazine_size", "5", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local snake_shotgun_knockback_strength = CreateConVar("ttt_snake_shotgun_knockback_strength", "1000", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local snake_shotgun_bullet_speed = CreateConVar("ttt_snake_shotgun_bullet_speed", "50", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local snake_shotgun_snake_impulse_strength = CreateConVar("ttt_snake_shotgun_snake_impulse_strength", "100", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local snake_shotgun_snake_health = CreateConVar("ttt_snake_shotgun_snake_health", "100", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local snake_shotgun_snake_damage = CreateConVar("ttt_snake_shotgun_snake_shotgun_snake_damage", "3", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local snake_shotgun_snake_target_range = CreateConVar("ttt_snake_shotgun_snake_target_range", "2000", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local snake_shotgun_kill_snake_after = CreateConVar("ttt_snake_shotgun_kill_snake_after", "120", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})

SNAKE_SHOTGUN.CVARS.snake_shotgun_magazine_size = snake_shotgun_magazine_size:GetInt()
SNAKE_SHOTGUN.CVARS.snake_shotgun_knockback_strength = snake_shotgun_knockback_strength:GetInt()
SNAKE_SHOTGUN.CVARS.snake_shotgun_bullet_speed = snake_shotgun_bullet_speed:GetInt()
SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_impulse_strength = snake_shotgun_snake_impulse_strength:GetInt()
SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_health = snake_shotgun_snake_health:GetInt()
SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_damage = snake_shotgun_snake_damage:GetInt()
SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_target_range = snake_shotgun_snake_target_range:GetInt()
SNAKE_SHOTGUN.CVARS.snake_shotgun_kill_snake_after = snake_shotgun_kill_snake_after:GetInt()

if SERVER then


    cvars.AddChangeCallback("ttt_snake_shotgun_magazine_size", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_magazine_size = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_snake_shotgun_knockback_strength", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_knockback_strength = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_snake_shotgun_bullet_speed", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_bullet_speed = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_snake_shotgun_snake_impulse_strength", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_impulse_strength = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_snake_shotgun_snake_health", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_health = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_snake_shotgun_snake_shotgun_snake_damage", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_damage = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_snake_shotgun_snake_target_range", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_target_range = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_snake_shotgun_kill_snake_after", function(name, old, new)
        SNAKE_SHOTGUN.CVARS.snake_shotgun_kill_snake_after = tonumber(new)
    end, nil)
end