function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0

    local tmp = string.rep(" ", depth)

    if name then tmp = tmp .. name .. " = " end

    if type(val) == "table" then
        tmp = tmp .. "{" .. (not skipnewlines and "\n" or "")

        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. "," .. (not skipnewlines and "\n" or "")
        end

        tmp = tmp .. string.rep(" ", depth) .. "}"
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    else
        tmp = tmp .. "\"[inserializeable datatype:" .. type(val) .. "]\""
    end

    return tmp
end

function dt_dumpItemStack(value)
    local tmp=""
    tmp =tmp.." name ["..value.name .."]"
    tmp =tmp.." type ["..value.type .."]"
	  tmp =tmp.." count ["..tostring(value.count) .."]"
end

function dt_dumpEntity(value,name,skipnewlines)
    local tmp=""
    skipnewlines=true
    if name and type(name) == "string" then tmp = tmp .. name .. " = " end
    tmp =tmp.." name ["..value.name .."]"  .. (not skipnewlines and "\n" or "")
    tmp =tmp.." type ["..value.type .."]"  .. (not skipnewlines and "\n" or "")
    tmp =tmp.." surface ["..value.surface.name..":"..tostring(value.surface.index) .."]"  .. (not skipnewlines and "\n" or "")
    tmp =tmp.." position [ x="..tostring(value.position.x).." y="..tostring(value.position.y) .."]"  .. (not skipnewlines and "\n" or "")
    if value.type == "transport-belt" then
--      for k,v in pairs(value) do 
--        tmp =tmp.."{"..k.."}="..tostring(v).." "
--      end
    
      local line=value.get_transport_line(1)
      local cnt=line.get_item_count()
      local cmap=line.get_contents()
      for k,v in pairs(cmap) do 
        tmp =tmp.."{"..k.."}="..tostring(v).." "
      end
      
--      local lm=getmetatable(line)
--      if lm  ~= nil then
--        tmp =tmp.."mata= "
--        for k,v in pairs(lm) do 
--          tmp =tmp.."{"..k.."}="..tostring(v).." "
--        end
--      end

      if cnt >0 then
        tmp =  tmp .. "[line 1 " .. tostring(cnt).."]" 
      end
      
      line=value.get_transport_line(2)
      cnt=line.get_item_count()
      if cnt >0 then
        tmp =  tmp .. "[line 2 " .. tostring(cnt).."]" 
      end 
       
    end
    
    return tmp
end

function dt_dumpItemTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0

    local tmp = string.rep(" ", depth)

    if name then tmp = tmp .. name .. " = " end

    if type(val) == "table" then
      for  name,value in pairs(val) do 
        tmp =  tmp .. dt_dumpEntity(value,name,true) .. (not skipnewlines and "\n" or "")
      end
    end

    return tmp
end

function string:split( inSplitPattern, outResults )

   if not outResults then
      outResults = { }
   end
   local theStart = 1
   local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
   while theSplitStart do
      table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
      theStart = theSplitEnd + 1
      theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
   end
   table.insert( outResults, string.sub( self, theStart ) )
   return outResults
end

function debugLog(message)
  if true then -- set for debug
    game.player.print(message)
  end
end

function table.val_to_str ( v )
  if "string" == type( v ) then
    v = string.gsub( v, "\n", "\\n" )
    if string.match( string.gsub(v,"[^'\"]",""), '^"+$' ) then
      return "'" .. v .. "'"
    end
    return '"' .. string.gsub(v,'"', '\\"' ) .. '"'
  else
    return "table" == type( v ) and table.tostring( v ) or
      tostring( v )
  end
end

function table.key_to_str ( k )
  if "string" == type( k ) and string.match( k, "^[_%a][_%a%d]*$" ) then
    return k
  else
    return "[" .. table.val_to_str( k ) .. "]"
  end
end


function table.tostring( tbl )
  local result, done = {}, {}
  for k, v in ipairs( tbl ) do
    table.insert( result, table.val_to_str( v ) )
    done[ k ] = true
  end
  for k, v in pairs( tbl ) do
    if not done[ k ] then
      table.insert( result,
        table.key_to_str( k ) .. "=" .. table.val_to_str( v ) )
    end
  end
  return "{" .. table.concat( result, "," ) .. "}"
end 
