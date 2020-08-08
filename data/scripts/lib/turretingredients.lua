-- removed unnecessary lines, thanks to KaneNOD for the tip!

--[[ Backup
TurretIngredients[WeaponType.RawUtilityLaser] =
{
    {name = "Laser Compressor",     amount = 15,   investable = 8,  minimum = 10,   weaponStat = "damage",  investFactor = 0.075, changeType = StatChanges.Percentage},
    {name = "Laser Modulator",      amount = 6,    investable = 4,  minimum = 0,    weaponStat = "stoneRawEfficiency", investFactor = 0.075, changeType = StatChanges.Flat },
    {name = "High Capacity Lens",   amount = 6,    investable = 4,  minimum = 0,    weaponStat = "reach",  investFactor = 0.8,},
    {name = "Conductor",            amount = 15,   investable = 6,  minimum = 2,},
    {name = "Steel",                amount = 15,   investable = 10, minimum = 3,},
    {name = "Targeting System",     amount = 0,    investable = 2,  minimum = 0, turretStat = "automatic", investFactor = 1, changeType = StatChanges.Flat},
}
	
]]--

TurretIngredients[WeaponType.RawUtilityLaser] =
{
    {name = "Laser Compressor",     amount = 15,   investable = 18,  minimum = 10,   weaponStat = "damage",  investFactor = 0.075, changeType = StatChanges.Percentage},
    {name = "Laser Modulator",      amount = 6,    investable = 110,  minimum = 0,    weaponStat = "stoneRawEfficiency", investFactor = 1.2, changeType = StatChanges.Flat },
    {name = "High Capacity Lens",   amount = 6,    investable = 20,  minimum = 0,    weaponStat = "reach",  investFactor = 0.8,},
    {name = "High Pressure Tube",   amount = 6,    investable = 120,  minimum = 0,    weaponStat = "metalRawEfficiency",  investFactor = 1.1,},
    {name = "Conductor",            amount = 15,   investable = 32,  minimum = 2,    weaponStat = "hullDamageMultiplier",  investFactor = 0.8,},
    {name = "Steel",                amount = 15,   investable = 110, minimum = 3,},
    {name = "Targeting System",     amount = 0,    investable = 1,  minimum = 0, turretStat = "automatic", investFactor = 1, changeType = StatChanges.Flat},
}