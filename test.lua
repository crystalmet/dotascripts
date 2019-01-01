local TestScript = {}
TestScript.optionEnable = Menu.AddOptionBool({"Utility"}, "TestScript", false)
TestScript.font = Renderer.LoadFont("Tahoma", 18, Enum.FontWeight.BOLD)

local myHero, myPlayer
local x, y

function TestScript.Init() 
	myHero = Heroes.GetLocal()
	myPlayer = Players.GetLocal()
	x, y = Renderer.GetScreenSize()
	x = x * 0.59
	y = y * 0.8426
	y = y - 20
	
end

function TestScript.OnGameStart()
	TestScript.Init()
end

function TestScript.OnUpdate()
	if not Menu.IsEnabled(TestScript.optionEnable) or not myHero then return end
end

function TestScript.OnDraw()
	if not Menu.IsEnabled(TestScript.optionEnable) or not myHero then return end
	
	Renderer.SetDrawColor(90, 255, 100)
	Renderer.DrawText(TestScript.font, x, y, "Go fuck yourself!")
end

TestScript.Init()
return TestScript
