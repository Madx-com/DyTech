module("ARS", package.seeall)
require "scripts/rs-functions"

--[[ The Calculators for the time to check the events!]]--
dstotalevents = 301 -- This makes 5 minutes before the entire unlock event starts again
eventtime = 60
function dsttime()
return (dstotalevents*eventtime) end

function AutomaticRS(event, ttime, r) 
	if event.tick%ttime==(r*1) then RSF.RSUnlock("IronGear") end
	if event.tick%ttime==(r*2) then RSF.RSUnlock("LongInserter") end
	if event.tick%ttime==(r*3) then RSF.RSUnlock("Assembling1") end
end