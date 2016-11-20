local FuncCache = {}

FuncRegister("CreateAdvEntityHook",function(Ent,Name,Data,Extra,Think,Func)
	MoEntity.SubscribeOnBuilt(Ent,Name,function(I) GenerateCompoundEntity(I,Data,Extra,Think,Name) end)
	FuncCache[Name]=Func
end)

local function PrintError(Text)
	for i,d in pairs(game.players) do
		d.print(""..Text)
	end
end

function SpawnBit(Ent,Data,Bits)
	local Pos = Ent.position
	if not Data.Type then return end -- What is this??? Give me a type!
	local Bit=Ent.surface.create_entity{name = Data.Type, position={x=Pos.x+(Data.x or 0),y=Pos.y+(Data.y or 0)}}
	--Add more options that can be configured.
	
	Bit.force=Data.Force or Ent.force
	
	if Data.Func then
		Data.Func(Bit)
	end
	
	Bits[Data.Name]={E=RegKey(Bit),I=Data.Important or false,D=Data.Extra or {}}
end

function KillBits(Bits)
	--PrintError("Killing Bits!")
	for i,d in pairs(Bits) do
		--PrintError("Bit: "..i)
		local E = GetEnt(d.E)
		if E and E.valid then
			E.destroy()
			--PrintError("Bit Removed")
		end
	end
end

function HasNeededBits(Bits)
	for i,d in pairs(Bits) do
		if not GetEnt(d.E).valid and d.I then
			return false
		end
	end
	
	return true
end

function GenerateCompoundEntity(Ent,Data,Extra,Think,Func)
	local Bits = {}
	for i,d in pairs(Data) do
		SpawnBit(Ent,d,Bits)
	end
	
	MoEntity.AddToLoop("CompoundHiddenLoop",Ent,{B=Bits,F=Func,E=Extra,NT=game.tick+Think*60,T=Think})
end

FuncRegister("CreateAdvEntityRaw",function(Ent,Name,Data,Extra,Think)	
	GenerateCompoundEntity(Ent,Data,Extra,Think,Name)
end)

FuncRegister("CreateAdvEntityRawFuncCache",function(Name,Func)	
	FuncCache[Name]=Func
end)

function CompoundEntityCheck()
	MoEntity.CallLoop("CompoundHiddenLoop",function(ent)
		local E = GetEnt(ent.entity)
		local B = ent.extra.B
		--PrintError("Checking ent")
		if game.tick >= ent.extra.NT then
			ent.extra.NT = game.tick+(ent.extra.T*60)
			if E and E.valid then
				--PrintError("Is Valid")
				if HasNeededBits(B) then
					local Func = FuncCache[ent.extra.F]
					if Func then
						Func({
							entity=E,
							bits=B,
							extra=ent.extra.E
						})
						--PrintError("Ran Function")
					end
					--PrintError("Function should of ran")
				else
					--E.die()
					--KillBits(B)
				end
			else
				--PrintError("Not Valid")
				KillBits(B)
				return false
			end
		end
		return true
	end)
end
MoTimers.CacheFunction("CompoundEntityCheck",CompoundEntityCheck)

function CompoundEntityCheckStartup() MoTimers.CreateTimer("CompoundEntityCheck",0.01,0,false,CompoundEntityCheck) end
MoTimers.CreateTimer("CompoundEntityCheckStartup",0.5,1,false,CompoundEntityCheckStartup)
MoTimers.CacheFunction("CompoundEntityCheckStartup",CompoundEntityCheckStartup)








