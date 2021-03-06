ESX              	= nil
local PlayerData 	= {}
local LEO 		= {"police", "sheriff", "state"}
local VehicleCrime 	= {"Grand Theft Auto", "Vehicle Theft", "Car Chopping"}

local zones = { 
['AIRP'] = "Los Santos International Airport", ['ALAMO'] = "Alamo Sea", ['ALTA'] = "Alta", ['ARMYB'] = "Fort Zancudo", ['BANHAMC'] = "Banham Canyon Dr", ['BANNING'] = "Banning", ['BEACH'] = "Vespucci Beach", ['BHAMCA'] = "Banham Canyon", ['BRADP'] = "Braddock Pass", ['BRADT'] = "Braddock Tunnel", ['BURTON'] = "Burton", ['CALAFB'] = "Calafia Bridge", ['CANNY'] = "Raton Canyon", ['CCREAK'] = "Cassidy Creek", ['CHAMH'] = "Chamberlain Hills", ['CHIL'] = "Vinewood Hills", ['CHU'] = "Chumash", ['CMSW'] = "Chiliad Mountain State Wilderness", ['CYPRE'] = "Cypress Flats", ['DAVIS'] = "Davis", ['DELBE'] = "Del Perro Beach", ['DELPE'] = "Del Perro", ['DELSOL'] = "Puerto Del Sol", ['DESRT'] = "Grand Senora Desert", ['DOWNT'] = "Downtown", ['DTVINE'] = "Downtown Vinewood", ['EAST_V'] = "East Vinewood", ['EBURO'] = "El Burro Heights", ['ELGORL'] = "El Gordo Lighthouse", ['ELYSIAN'] = "Elysian Island", ['GALFISH'] = "Galilee", ['GOLF'] = "GWC and Golfing Society", ['GRAPES'] = "Grapeseed", ['GREATC'] = "Great Chaparral", ['HARMO'] = "Harmony", ['HAWICK'] = "Hawick", ['HORS'] = "Vinewood Racetrack", ['HUMLAB'] = "Humane Labs and Research", ['JAIL'] = "Bolingbroke Penitentiary", ['KOREAT'] = "Little Seoul", ['LACT'] = "Land Act Reservoir", ['LAGO'] = "Lago Zancudo", ['LDAM'] = "Land Act Dam", ['LEGSQU'] = "Legion Square", ['LMESA'] = "La Mesa", ['LOSPUER'] = "La Puerta", ['MIRR'] = "Mirror Park", ['MORN'] = "Morningwood", ['MOVIE'] = "Richards Majestic", ['MTCHIL'] = "Mount Chiliad", ['MTGORDO'] = "Mount Gordo", ['MTJOSE'] = "Mount Josiah", ['MURRI'] = "Murrieta Heights", ['NCHU'] = "North Chumash", ['NOOSE'] = "N.O.O.S.E", ['OCEANA'] = "Pacific Ocean", ['PALCOV'] = "Paleto Cove", ['PALETO'] = "Paleto Bay", ['PALFOR'] = "Paleto Forest", ['PALHIGH'] = "Palomino Highlands", ['PALMPOW'] = "Palmer-Taylor Power Station", ['PBLUFF'] = "Pacific Bluffs", ['PBOX'] = "Pillbox Hill", ['PROCOB'] = "Procopio Beach", ['RANCHO'] = "Rancho", ['RGLEN'] = "Richman Glen", ['RICHM'] = "Richman", ['ROCKF'] = "Rockford Hills", ['RTRAK'] = "Redwood Lights Track", ['SANAND'] = "San Andreas", ['SANCHIA'] = "San Chianski Mountain Range", ['SANDY'] = "Sandy Shores", ['SKID'] = "Mission Row", ['SLAB'] = "Slab City", ['STAD'] = "Maze Bank Arena", ['STRAW'] = "Strawberry", ['TATAMO'] = "Tataviam Mountains", ['TERMINA'] = "Terminal", ['TEXTI'] = "Textile City", ['TONGVAH'] = "Tongva Hills", ['TONGVAV'] = "Tongva Valley", ['VCANA'] = "Vespucci Canals", ['VESP'] = "Vespucci", ['VINE'] = "Vinewood", ['WINDF'] = "Ron Alternates Wind Farm", ['WVINE'] = "West Vinewood", ['ZANCUDO'] = "Zancudo River", ['ZP_ORT'] = "Port of South Los Santos", ['ZQ_UAR'] = "Davis Quartz" 
}

local popzones = { 
"Los Santos International Airport", "Alta", "Fort Zancudo", "Banham Canyon Dr", "Banning", "Vespucci Beach", "Burton", "Chamberlain Hills", "Vinewood Hills", "Chumash", "Cypress Flats", "Davis", "Del Perro Beach", "Del Perro", "Puerto Del Sol", "Downtown", "Downtown Vinewood", "East Vinewood", "El Burro Heights", "Elysian Island", "Galilee", "GWC and Golfing Society", "Grapeseed", "Harmony", "Hawick", "Vinewood Racetrack", "Humane Labs and Research", "Bolingbroke Penitentiary", "Little Seoul", "Land Act Dam", "Legion Square", "La Mesa", "La Puerta", "Mirror Park", "Morningwood", "Richards Majestic", "Murrieta Heights", "North Chumash", "N.O.O.S.E", "Paleto Bay", "Paleto Forest", "Palmer-Taylor Power Station", "Pacific Bluffs", "Pillbox Hill", "Rancho", "Richman Glen", "Richman",  "Rockford Hills",  "Sandy Shores",  "Mission Row",  "Stab City",  "Maze Bank Arena", "Strawberry", "Terminal", "Textile City", "Vespucci Canals", "Vespucci", "Vinewood", "West Vinewood", "Port of South Los Santos", "Davis Quartz" 
}

local whitelist = {
	GetHashKey("WEAPON_PISTOL"),
	GetHashKey("WEAPON_COMBATPISTOL"),
	GetHashKey("WEAPON_APPISTOL"),
	GetHashKey("WEAPON_PISTOL50"),
	GetHashKey("WEAPON_SNSPISTOL"),
	GetHashKey("WEAPON_HEAVYPISTOL"),
	GetHashKey("WEAPON_VINTAGEPISTOL"),
	GetHashKey("WEAPON_MACHINEPISTOL"),
	GetHashKey("WEAPON_REVOLVER"),
	GetHashKey("WEAPON_MARKSMANPISTOL"),
	GetHashKey("WEAPON_DOUBLEACTION"),
	GetHashKey("WEAPON_SMG"),
	GetHashKey("WEAPON_ASSAULTSMG"),
	GetHashKey("WEAPON_MICROSMG"),
	GetHashKey("WEAPON_MINISMG"),
	GetHashKey("WEAPON_COMBATPDW"),
	GetHashKey("WEAPON_MG"),
	GetHashKey("WEAPON_COMBATMG"),
	GetHashKey("WEAPON_GUSENBERG"),
	GetHashKey("WEAPON_PUMPSHOTGUN"),
	GetHashKey("WEAPON_SAWNOFFSHOTGUN"),
	GetHashKey("WEAPON_ASSAULTSHOTGUN"),
	GetHashKey("WEAPON_BULLPUPSHOTGUN"),
	GetHashKey("WEAPON_HEAVYSHOTGUN"),
	GetHashKey("WEAPON_DBSHOTGUN"),
	GetHashKey("WEAPON_AUTOSHOTGUN"),
	GetHashKey("WEAPON_MUSKET"),
	GetHashKey("WEAPON_ASSAULTRIFLE"),
	GetHashKey("WEAPON_CARBINERIFLE"),
	GetHashKey("WEAPON_ADVANCEDRIFLE"),
	GetHashKey("WEAPON_SPECIALCARBINE"),
	GetHashKey("WEAPON_BULLPUPRIFLE"),
	GetHashKey("WEAPON_COMPACTRIFLE"),
	GetHashKey("WEAPON_SNIPERRIFLE"),
	GetHashKey("WEAPON_HEAVYSNIPER"),
	GetHashKey("WEAPON_MARKSMANRIFLE"),
	GetHashKey("WEAPON_MINIGUN"),
	GetHashKey("WEAPON_RAILGUN"),
	-- GetHashKey("WEAPON_STUNGUN"),
	GetHashKey("WEAPON_RPG"),
	GetHashKey("WEAPON_HOMINGLAUNCHER"),
	GetHashKey("WEAPON_GRENADELAUNCHER"),
	GetHashKey("WEAPON_COMPACTLAUNCHER"),
	-- GetHashKey("WEAPON_FLAREGUN"),
	-- GetHashKey("WEAPON_FIREEXTINGUISHER"),
	-- GetHashKey("WEAPON_PETROLCAN"),
	-- GetHashKey("WEAPON_FIREWORK"),
	-- GetHashKey("WEAPON_FLASHLIGHT"),
	-- GetHashKey("GADGET_PARACHUTE"),
	-- GetHashKey("WEAPON_KNUCKLE"),
	-- GetHashKey("WEAPON_HATCHET"),
	-- GetHashKey("WEAPON_MACHETE"),
	-- GetHashKey("WEAPON_SWITCHBLADE"),
	-- GetHashKey("WEAPON_BOTTLE"),
	-- GetHashKey("WEAPON_DAGGER"),
	-- GetHashKey("WEAPON_POOLCUE"),
	-- GetHashKey("WEAPON_WRENCH"),
	-- GetHashKey("WEAPON_BATTLEAXE"),
	-- GetHashKey("WEAPON_KNIFE"),
	-- GetHashKey("WEAPON_NIGHTSTICK"),
	-- GetHashKey("WEAPON_HAMMER"),
	-- GetHashKey("WEAPON_BAT"),
	-- GetHashKey("WEAPON_GOLFCLUB"),
	-- GetHashKey("WEAPON_CROWBAR"),
	-- GetHashKey("WEAPON_GRENADE"),
	-- GetHashKey("WEAPON_SMOKEGRENADE"),
	-- GetHashKey("WEAPON_STICKYBOMB"),
	-- GetHashKey("WEAPON_PIPEBOMB"),
	-- GetHashKey("WEAPON_BZGAS"),
	-- GetHashKey("WEAPON_MOLOTOV"),
	-- GetHashKey("WEAPON_PROXMINE"),
	-- GetHashKey("WEAPON_SNOWBALL"),
	-- GetHashKey("WEAPON_BALL"),
	-- GetHashKey("WEAPON_FLARE")
}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function alertChance(ac)
	local dr = math.random(1, 100)
    percentage = ac
    if(dr < percentage)then
        return true
    else
        return false
    end
end

RegisterNetEvent('dd_outlawalerts:Notify')
AddEventHandler('dd_outlawalerts:Notify', function(title, zone, msg)
	ESX.TriggerServerCallback('dd_outlawalerts:getItemAmount', function(quantity)
		if PlayerData.job ~= nil then 
			if has_value(LEO, PlayerData.job.name) or quantity > 0 then
				ESX.ShowAdvancedNotification(title, zone, msg, 'CHAR_CALL911', 7)
			end
		end
	end, 'scanner')
end)

RegisterNetEvent('dd_outlawalerts:alertPlace')
AddEventHandler('dd_outlawalerts:alertPlace', function(title, blipAlertTime, blipColour, ax, ay, az)
	if has_value(LEO, PlayerData.job.name) then
		local trans = 250
		local alertBlip = AddBlipForCoord(ax, ay, az)
		SetBlipSprite(alertBlip, 1)
		SetBlipColour(alertBlip, blipColour)
		SetBlipAlpha(alertBlip, trans)
		SetBlipAsShortRange(alertBlip, 0)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(title)
		EndTextCommandSetBlipName(alertBlip)
		while trans ~= 0 do
			Wait(blipAlertTime * 4)
			trans = trans - 1
			SetBlipAlpha(alertBlip,  trans)
			if trans == 0 then
				SetBlipSprite(alertBlip, 2)
				return 
			end
		end
	end
end)

RegisterNetEvent('dd_outlawalerts:outlawBlip')
AddEventHandler('dd_outlawalerts:outlawBlip', function(identifier, blipColour, connectedPlayers)
	if PlayerData.job ~= nil 
	and has_value(LEO, PlayerData.job.name) 
	and blipColour ~= 0
	then
		for k,v in pairs(connectedPlayers) do
			if identifier == v then
				ped = GetPlayerFromServerId(k)
				outped = GetPlayerPed(ped)
				serverid = k
			end
		end
		if GetPlayerServerId(PlayerId()) ~= serverid then
			local transO = 250
			local blip = AddBlipForEntity(outped)
			SetBlipSprite(blip, 270)
			SetBlipColour(blip, blipColour)
			SetBlipAlpha(blip, transO)
			SetBlipAsShortRange(blip, 1)
			
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentSubstringPlayerName('Suspect')
			EndTextCommandSetBlipName(blip)
			while transO ~= 0 do
				Wait(outlawTime * 4)
				transO = transO - 1
				SetBlipAlpha(blip, transO)
				if transO == 0 then
					SetBlipSprite(blip, 2)
				end
			end
		end
	end
end)

function checkGun()
	local currentWeapon = GetSelectedPedWeapon(GetPlayerPed(-1))
	if has_value(whitelist, currentWeapon) and not IsPedCurrentWeaponSilenced(GetPlayerPed(-1))then
		return true
	else
		return false
	end
end

Citizen.CreateThread(function()
    while true do
        Wait(0)
		if IsPedShooting(GetPlayerPed(-1)) then
			if checkGun() then
				alert("Shots Fired")
			end
			Wait(500)
		elseif IsPedInMeleeCombat(GetPlayerPed(-1)) and true then 
			alert("Civil Disturbance")
			Wait(500)
		elseif IsPedJacking(GetPlayerPed(-1)) then
			alert("Grand Theft Auto")
			Wait(500)
		elseif IsPedTryingToEnterALockedVehicle(GetPlayerPed(-1)) then
			alert("Vehicle Theft")
			Wait(500)
		end
	end
end)

function alert(event)
	local ped = GetPlayerPed(-1)
	local plyPos = GetEntityCoords(ped,  true)
	local s1, s2 = GetStreetNameAtCoord(plyPos.x, plyPos.y, plyPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt())
	local street1 = GetStreetNameFromHashKey(s1)
	local street2 = GetStreetNameFromHashKey(s2)
	local zone = zones[GetNameOfZone(plyPos.x, plyPos.y, plyPos.z)]
	local veh = GetVehiclePedIsUsing(ped)
	local display = GetDisplayNameFromVehicleModel(GetEntityModel(veh))
	local text = GetLabelText(display)
	if text == "NULL" then
		text = "vehicle"
	end
	if zone == nil then
		zone = "San Andreas"
	end
	if IsPedMale(ped) then
		sex = "male"
	elseif not IsPedMale(ped) then
		sex = "female"
	end
	if Config[event].Populated == false or has_value(popzones, zone) then
		if alertChance(Config[event].Chance) then
			if Config[event].Outlaw then
				TriggerServerEvent('dd_outlawalerts:setOutlaw', Config[event].Colour)
			end
			TriggerEvent('dd_reportcrime:playsound', event, zone, citizen)
			TriggerServerEvent('dd_outlawalerts:alertPos', event, Config[event].Bliptime, Config[event].Colour, plyPos.x, plyPos.y, plyPos.z)
			TriggerServerEvent('dd_outlawalerts:eventInProgress', event, zone, street1, street2, text, sex)
			Wait(Config[event].Waittime*1000)
		end
	end
end

RegisterNetEvent('dd_outlawalerts:explosionAlert')
AddEventHandler('dd_outlawalerts:explosionAlert', function(posX, posY, posZ)
	local event = "Explosion"
	local s1, s2 = GetStreetNameAtCoord(posX, posY, posZ, Citizen.PointerValueInt(), Citizen.PointerValueInt())
	local street1 = GetStreetNameFromHashKey(s1)
	local street2 = GetStreetNameFromHashKey(s2)
	local zone = zones[GetNameOfZone(posX, posY, posZ)]
	if zone == nil then
		zone = "San Andreas"
	end
	if Config[event].Populated == false or has_value(popzones, zone) then
		if alertChance(Config[event].Chance) then
			TriggerEvent('dd_reportcrime:playsound', event, zone, citizen)
			TriggerServerEvent('dd_outlawalerts:alertPos', event, Config[event].Bliptime, Config[event].Colour, posX, posY, posZ)
			TriggerServerEvent('dd_outlawalerts:eventInProgress', event, zone, street1, street2, text, sex)
			Wait(Config[event].Waittime*1000)
		end
	end
end)

RegisterNetEvent('dd_outlawalerts:triggerAlert')
AddEventHandler('dd_outlawalerts:triggerAlert', function(event)
	alert(event)
end)
