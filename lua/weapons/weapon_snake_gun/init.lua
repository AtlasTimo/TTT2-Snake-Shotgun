AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local snakeNamesTable = {
	"Holger",
	"Rüdiger",
	"Rudolf",
	"Hans",
	"Franz",
	"Fridolin",
	"Olga",
	"Harald",
	"Johannes",
	"Peter",
	"Kevin",
	"Jürgen",
	"Karl",
	"Jochen",
	"Chantal",
	"Jens",
	"Petra",
	"Klaus",
	"Markus",
	"Albert",
	"Ali",
	"Mohammed",
	"Abdul",
	"Bill",
	"El",
	"Ahmed",
	"Heinz",
	"Otto",
	"Nick",
	"Rainer",
	"Rob",
	"Ron",
	"Rosa",
	"Wilma",
	"Wolfgang",
	"Maria",
	"Magret",
	"Klara",
	"Kai",
	"Jonny",
	"Hella",
	"Gutfried",
	"Gregor",
	"Eva",
	"Frank",
	"Elfried",
	"Tarzan",
	"Jesus",
	"Rapunzel",
	"Gucci",
	"Satan",
	"Ismir",
	"Dennis",
	"Sam",
	"Phil",
	"Marta",
	"Mira",
	"Jim",
	"Theo",
	"Paul",
	"Jacquline",
	"Kim Jong-un",
	"Stalin",
	"Wilhelm",
	"Emma",
	"Greta",
	"Donald",
	"Thürte",
	"Louis Vuitton",
	"Meg",
	"Quagmire",
	"Louis",
	"Beef",
	"Steve",
	"Dilara",
	"Tim",
	"Lady Longleg",
	"Theodor",
	"Brunhilde",
	"Buxehude",
	"Betty",
	"Bruce",
	"Buck",
	"Buster",
	"Nike",
	"Connie",
	"Curley",
	"Norma",
	"Harry",
	"Ivana",
	"Luke",
	"Maya",
	"Michael",
	"Nadia",
	"Oliver",
	"Leon Machere",
	"Simon Dessue",
	"Gallileo",
	"Schrödiger",
	"Einstein",
	"Archimedes",
	"Gauss",
	"Darwin",
	"Maxwell",
	"Montana Black",
	"Newton",
	"Hawking",
	"Boomer",
	"Anne",
	"Jim",
	"Tobias",
	"Marcel",
	"Monika",
	"Antonia",
	"Amy",
	"Anton",
	"Ben",
	"Konstantin",
	"Napoleon",
	"Bianca",
	"Stella",
	"Vita",
	"Gloria",
	"Bruno",
	"Bosco",
	"Angelo",
	"Benidikt",
	"Elisabeth",
	"Chiara",
	"Anisha",
	"Marcia",
	"Abygail",
	"Aida",
	"Ariana",
	"Adriana",
	"Ariel",
	"Alisia",
	"Enzo",
	"Marco",
	"Polo",
	"Barbossa",
	"Matteo",
	"Luigi",
	"Francisca",
	"Helene",
	"Andrea",
	"Hannah",
	"Lisa",
	"Amir",
	"Emir",
	"Kebab",
	"Kadir",
	"Kabbe",
	"Malik",
	"Salih",
	"Kaplan",
	"Mustafa",
	"Hasan",
	"Abdulah",
	"Azad",
	"Osman",
	"Kaya",
	"Yusuf",
	"Sadik",
	"Tarkan",
	"Barin",
	"Sven",
	"Ragnar",
	"Joanna",
	"Romeo",
	"Julia",
	"Odin",
	"Haimdal",
	"Annalotta",
	"Thor",
	"Zeus",
	"Hades",
	"Askjell",
	"Björn",
	"Simba",
	"Afua",
	"Taio",
	"Amari",
	"Caillou",
	"Madiba",
	"Dexter",
	"Kutulu",
	"Leila",
	"Rafiki",
	"Rolf",
	"Li-Ming",
	"Dieter",
	"Atze",
	"Yan-Yi",
	"Abraham",
	"Wong",
	"Chen Lu",
	"Li Wey",
	"Min-Yun",
	"Wladimir",
	"Sergei",
	"Velentin",
	"Sascha",
	"Iwan",
	"Natalia",
	"Tatjana",
	"Natascha",
	"Rosita",
	"Andrej",
	"Alexej",
	"Pjotr",
	"Wladislaw",
	"Nikolay",
	"Igor",
	"Bogdan",
	"Damjan",
	"DJ",
	"Tom Tom",
	"Dmitrij",
	"Jan",
	"Fritz",
	"Gustaf",
	"Gerhard",
	"Gerald",
	"Erik",
	"Maxim",
	"Miroslaw",
	"Roman",
	"Heiko",
	"Stefan",
	"Viktor",
	"Ken",
	"Hagrid",
	"Albus",
	"Perry",
	"Sarah",
	"Peggy",
	"Edmund",
	"Anthony",
	"Harley",
	"Justin",
	"Merlin",
	"Sirius",
	"Alexa",
	"Google",
	"Yahoo",
	"Bing",
	"Microsoft",
	"Toast",
	"Kamila",
	"Eret"
}

function SWEP:Initialize()
	self:SetNextSecondaryFire(CurTime() + 1.0)
	self:SetClip1(SNAKE_SHOTGUN.CVARS.snake_shotgun_magazine_size)
end

function SWEP:PrimaryAttack()
	self:EmitSound("Weapon_Shotgun.Single")
	self:SetNextPrimaryFire(CurTime() + 1.0)
	local ow = self:GetOwner()

	for i = -1, 1, 1 do
		local snake = ents.Create("prop_ragdoll")
		snake:SetKeyValue("model", "models/snake_gun/snake/snake.mdl")
		snake:SetKeyValue("angles", tostring(ow:EyeAngles()))
		snake:Fire("Kill", "", tostring(SNAKE_SHOTGUN.CVARS.snake_shotgun_kill_snake_after))

		snake:SetPos(ow:EyePos() + ow:GetRight() * 10 * i)
		snake:SetName("ttt_snake_gun_snake")

		snake:Spawn()
		snake:SetCollisionGroup(COLLISION_GROUP_WORLD)
		snake:SetNWInt("health", SNAKE_SHOTGUN.CVARS.snake_shotgun_snake_health)
		snake:SetNWString("snakeName", "ttt_snake_gun_snake")
		snake:SetNWString("snakeDisplayName", snakeNamesTable[math.random(#snakeNamesTable)])

		local snakePhys = {}
		local v = ow:GetAimVector()

		for y = 0, 3, 1 do
			table.insert(snakePhys, y, snake:GetPhysicsObjectNum(y))
			if (y > 0) then
				snakePhys[y]:SetDragCoefficient(1)
			end
			snakePhys[y]:ApplyForceCenter(v * SNAKE_SHOTGUN.CVARS.snake_shotgun_bullet_speed * 1000)
		end

		local empty = ents.Create("ent_empty")
		empty:Spawn()
		empty:SetOwner(ow)
		empty:SetSnakeEntityPhys(snake, snakePhys[0])
		empty:Fire("Kill", "", tostring(SNAKE_SHOTGUN.CVARS.snake_shotgun_kill_snake_after))
	end

	ow:SetVelocity(-ow:GetAimVector() * SNAKE_SHOTGUN.CVARS.snake_shotgun_knockback_strength + Vector(0, 0, 200))

	self:TakePrimaryAmmo(1)

	if (self:Clip1() <= 0) then
		ow:StripWeapon("weapon_snake_gun")
	end
end

function SWEP:OnDrop()
	if (self.AllowDrop) then return end
	self:Remove()
end