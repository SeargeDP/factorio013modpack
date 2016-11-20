GetTable=function()
	MoMisc=MoMisc or {}
	return MoMisc
end

--This requires a explosion entity with the sounds you want preloaded into it.
FuncRegister("PlaySound",function(Sound,Pos,Surface)
	return Surface.create_entity({name = Sound, position=Pos})
end)

--Ease Function to help printing.
FuncRegister("Print",function(Text)
	for i,d in pairs(game.players) do
		if d and d.valid then
			d.print(""..Text)
		end
	end
end)

local function PrintTab(Table)
	for i,d in pairs(Table) do
		local T = type(d)
		if T == "table" then
			MoMisc.Print("Table: "..i)
			PrintTab(d)
		else
			MoMisc.Print(tostring(i).." : "..tostring(d))
		end
	end
end

FuncRegister("PrintTable",function(Table)
	PrintTab(Table)
end)

--This function lets you have random numbers, while not desyncing replays/multiplayer. (Hopefully.)
FuncRegister("Random",function(Seed,Min,Max)
	--math.randomseed(game.tick/Seed)
	return math.random(Min,Max)
end)
