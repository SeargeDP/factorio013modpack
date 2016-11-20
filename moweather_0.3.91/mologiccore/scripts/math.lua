GetTable=function()
	MoMath=MoMath or {}
	return MoMath
end

FuncRegister("SecondsToClock",function(N1)
	if N1 == 0 then
		--return nil;
		return "00:00:00";
	else
		nHours = string.format("%02.f", math.floor(N1/3600));
		nMins = string.format("%02.f", math.floor(N1/60 - (nHours*60)));
		nSecs = string.format("%02.f", math.floor(N1 - nHours*3600 - nMins *60));
		return nHours..":"..nMins..":"..nSecs
	end
end)

FuncRegister("Round", function(N1,N2)
    local mult = 10^(N2 or 0)
    if N1 >= 0 then return math.floor(N1 * mult + 0.5) / mult
    else return math.ceil(N1 * mult - 0.5) / mult end
end)

--Clamps a number between two other numbers. A cant be greater then B and cant be lesser then C.
FuncRegister("Clamp",function(N1,N2,N3)
	if(N1<N2)then
		return N2
	elseif(N1>N3)then
		return N3
	end
	return N1
end)

--Returns the sign of a number. Aka if its greater equal or lesser then 0.
FuncRegister("Sign", function(N1)
	if N1>0 then
		return 1
	elseif N1<0 then
		return -1
	end
	return 0
end)

--Increments the first variable towards the second at the rate of the third.
FuncRegister("Approach", function(N1,N2,N3)
	local C = (MoMath.Sign(N2-N1)*N3)
	if C>0 then
		if N1+C>N2 then
			return N2
		end
	else
		if N1+C<N2 then
			return N2
		end
	end
	return N1+C
end)

--Joule Amounts
FuncRegister("GetKJ", function() return 1000 end)
FuncRegister("GetMJ", function() return 1000000 end)
FuncRegister("GetGJ", function() return 1e-9 end)

--Joule conversions.
FuncRegister("JtoKJ", function(N1) return N1*1000 end)
FuncRegister("JtoMJ", function(N1) return N1*1000000 end)
FuncRegister("JtoGJ", function(N1) return N1*1e-9 end)

FuncRegister("KJtoJ", function(N1) return N1/1000 end)
FuncRegister("KJtoMJ", function(N1) return N1*1000 end)
FuncRegister("KJtoGJ", function(N1) return N1*1000000 end)

FuncRegister("MJtoJ", function(N1) return N1/1000000 end)
FuncRegister("MJtoKJ", function(N1) return N1/1000 end)
FuncRegister("MJtoGJ", function(N1) return N1*1000 end)

FuncRegister("GJtoJ", function(N1) return N1/1e-9 end)
FuncRegister("GJtoKJ", function(N1) return N1/1000000 end)
FuncRegister("GJtoMJ", function(N1) return N1/1000 end)

