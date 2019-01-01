local TestScript = {}
TestScript.testOption = Menu.AddOptionBool({"Utility"}, "TestScript", false)

local myHero, myPlayer

function TestScript.Init() 
	myHero = Heroes.GetLocal()
	if not myHero then
		return
	end
	
	myPlayer = Players.GetLocal()
end

function TestScript.OnGameStart( ... )
	TestScript.Init()
end

function TestScript.OnUpdate( ... )
	
end

TestScript.Init()
return TestScript
