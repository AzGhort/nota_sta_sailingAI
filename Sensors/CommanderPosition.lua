local sensorInfo = {
	name = "ExampleDebug",
	desc = "Sends data to example debug widget",
	author = "PepeAmpere",
	date = "2018-04-16",
	license = "MIT",
}

-- get madatory module operators
VFS.Include("modules.lua") -- modules table
VFS.Include(modules.attach.data.path .. modules.attach.data.head) -- attach lib module

-- get other madatory dependencies
attach.Module(modules, "message") -- communication backend load

local EVAL_PERIOD_DEFAULT = 0 -- actual, no caching

function getInfo()
	return {
		period = EVAL_PERIOD_DEFAULT
	}
end

return function()
	if #units > 0 then
		local ID = units[1]
		local x,y,z = Spring.GetUnitPosition(ID)
		return
		{
					X = x,
					Z = z
	  }
	end
end


-- for unitID in units do
--	local unitDefID = Spring.GetUnitDefID(unitID)
--	local name = UnitDefs[unitDefID].name
--	if name == "armbcom" then x,y,z = Spring.GetUnitPosition(unitID)
--		end
--	end
