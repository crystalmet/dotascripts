local Lasthit = {}
Lasthit.OptionEnable = Menu.AddOptionBool({"Utility"}, "Lasthit", false)
Lasthit.Font = Renderer.LoadFont("Tahoma", 18, Enum.FontWeight.BOLD)

local x, y

function Lasthit.Init() 
	x, y = Renderer.GetScreenSize()
	x = x * 0.59
	y = y * 0.8426
	y = y - 20	
end

function Lasthit.OnGameStart()
	Lasthit.Init()
end

function Lasthit.OnUpdate()
	if not Menu.IsEnabled(Lasthit.OptionEnable) or not Engine.IsInGame() then return end
end

function Lasthit.OnDraw()
	if not Menu.IsEnabled(Lasthit.OptionEnable) or not Engine.IsInGame() then return end
	
	Renderer.SetDrawColor(90, 255, 100)
	Renderer.DrawText(Lasthit.Font, x, y, "Something works")
	
	for heroent, EnemyHero in pairs(EnemyHeroes) do
      	if EnemyHero.Valid then
			local origin = Entity.GetAbsOrigin(heroent)
			local HBO = EnemyHero.HBO
			origin:SetZ(origin:GetZ() + HBO)
			local hx, hy = Renderer.WorldToScreen(origin)
			
			if Renderer.IsOnScreen(hx, hy) then
				local HP = ceil(EnemyHero.HP)
			  	local MaxHP = ceil(EnemyHero.MaxHP)
			  	local HPText = HP.."/"..MaxHP

			  	Renderer.SetDrawColor(222, 222, 222, 255)
			  	local w, h = Renderer.GetTextSize(InfoScreen.Renderer.Font, HPText)
			  	Renderer.DrawTextAlign(Lasthit.Font, hx + 20, hy + 20, HPText)
			end
      end
end

Lasthit.Init()
return Lasthit
