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
end

Lasthit.Init()
return Lasthit
