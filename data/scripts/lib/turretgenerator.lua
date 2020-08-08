
-- You always need to create a possible specialties for all turrets that you create. If you don't you will mess your mod.

--[[ An examaple:

scales[WeaponType.ForceGun] = {
    {from = 0, to = 20, size = 0.5, usedSlots = 1},
    {from = 21, to = 36, size = 1.0, usedSlots = 2},
    {from = 37, to = 49, size = 1.5, usedSlots = 3},
    {from = 50, to = 52, size = 3.5, usedSlots = 6},
}

-- scale will make your turret bigger and the amount of slots that turret will use on the ship.

{from = 0, to = 20, size = 0.5, usedSlots = 1},

from/to means tech of your turret.
size is the size of your turret on the ship.
used slots will "consume" the slots of your ship to install the turret.

possibleSpecialties[WeaponType.RawUtilityLaser] = 
    {specialty = Specialty.HighEfficiency, probability = 0.3},
    {specialty = Specialty.AutomaticFire, probability = 0.1},
}

-- probability is the number, in percentage, that will add or not that Specialty to your turret.
-- 0.3 = 30% chance to add the specialty

--]]

scales[WeaponType.RawUtilityLaser] = scales[WeaponType.SalvagingLaser]

possibleSpecialties[WeaponType.RawUtilityLaser] = possibleSpecialties[WeaponType.SalvagingLaser]

--possibleSpecialties[WeaponType.RawUtilityLaser] = { 
    -- add your specialties here...
--}

function TurretGenerator.generateRawUtilitylaserTurret(rand, dps, tech, material, rarity)
	-- here I change the
	-- function TurretGenerator.generateRawUtilitylaser(rand, dps, tech, material, rarity)
	-- to
	-- function TurretGenerator.generateRawUtilitylaserTurret(rand, dps, tech, material, rarity)
	-- Don't put same name on functions on your mod, the game will break if you do this.
    local result = TurretTemplate()


    local requiredCrew = TurretGenerator.dpsToRequiredCrew(dps)
    local crew = Crew()
    crew:add(requiredCrew, CrewMan(CrewProfessionType.Miner))
    result.crew = crew


    local numWeapons = rand:getInt(1, 2)
	
	local weapon = WeaponGenerator.generateRawUtilityLaser(rand, dps, tech, material, rarity) -- <---- in this line you need to call the WeaponGenerator function.
    weapon.damage = weapon.damage / numWeapons


    TurretGenerator.attachWeapons(rand, result, weapon, numWeapons)

    local percentage = math.floor(weapon.stoneDamageMultiplier * 100)
    result:addDescription("%s%% Damage to Stone"%_T, string.format("%+i", percentage))

	-- To use scale and Specialties, you need to create them before. So I put them for you to don't mess everything.
    TurretGenerator.scale(rand, result, WeaponType.RawUtilityLaser, tech, 1)
    TurretGenerator.addSpecialties(rand, result, WeaponType.RawUtilityLaser)

    result:updateStaticStats()

    return result
end

-- you always need to add a generator function on the end to call the "WeaponType.RawUtilityLaser" and set it to Turret Generator. That will create the base of your turret.
-- without this, your turret will be created without a base and the mod will break the game.
generatorFunction[WeaponType.RawUtilityLaser] = TurretGenerator.generateRawUtilitylaserTurret
