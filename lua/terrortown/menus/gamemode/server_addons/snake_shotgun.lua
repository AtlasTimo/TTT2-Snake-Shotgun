CLGAMEMODESUBMENU.base = "base_gamemodesubmenu"
CLGAMEMODESUBMENU.title = "submenu_addons_snake_shotgun_title"

function CLGAMEMODESUBMENU:Populate(parent)
	local form = vgui.CreateTTT2Form(parent, "help_snake_shotgun_gun_settings")

	form:MakeSlider({
		label = "label_snake_shotgun_magazine_size",
		serverConvar = "ttt_snake_shotgun_magazine_size",
		min = 1,
		max = 15,
		decimal = 0
	})

	form:MakeSlider({
		label = "label_snake_shotgun_knockback_strength",
		serverConvar = "ttt_snake_shotgun_knockback_strength",
		min = 100,
		max = 2000,
		decimal = 0
	})

	form:MakeSlider({
		label = "label_snake_shotgun_bullet_speed",
		serverConvar = "ttt_snake_shotgun_bullet_speed",
		min = 10,
		max = 100,
		decimal = 0
	})

	local form2 = vgui.CreateTTT2Form(parent, "help_snake_shotgun_snake_settings")

	form2:MakeSlider({
		label = "label_snake_shotgun_snake_impulse_strength",
		serverConvar = "ttt_snake_shotgun_snake_impulse_strength",
		min = 70,
		max = 300,
		decimal = 0
	})

	form2:MakeSlider({
		label = "label_snake_shotgun_snake_health",
		serverConvar = "ttt_snake_shotgun_snake_health",
		min = 10,
		max = 500,
		decimal = 0
	})

	form2:MakeSlider({
		label = "label_snake_shotgun_snake_shotgun_snake_damage",
		serverConvar = "ttt_snake_shotgun_snake_shotgun_snake_damage",
		min = 1,
		max = 100,
		decimal = 0
	})

	form2:MakeSlider({
		label = "label_snake_shotgun_snake_target_range",
		serverConvar = "ttt_snake_shotgun_snake_target_range",
		min = 100,
		max = 4000,
		decimal = 0
	})

	form2:MakeSlider({
		label = "label_snake_shotgun_kill_snake_after",
		serverConvar = "ttt_snake_shotgun_kill_snake_after",
		min = 20,
		max = 240,
		decimal = 0
	})
end
