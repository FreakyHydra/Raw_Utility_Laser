
function WeaponGenerator.generateRawUtilityLaser(rand, dps, tech, material, rarity)
    local weapon = Weapon()
    weapon:setBeam()

    weapon.fireDelay = 0.2
    weapon.appearanceSeed = rand:getInt()
    weapon.reach = 600
    weapon.recoil = 0
    weapon.continuousBeam = true
    weapon.appearance = WeaponAppearance.MiningLaser
    weapon.name = "R-Utility Laser /* Weapon Name*/"%_t
    weapon.prefix = "R-Utility /* Weapon Prefix*/"%_t
    weapon.icon = "data/textures/icons/mining-laser.png"
    weapon.sound = "raw-mining"


    weapon.damage = dps * weapon.fireDelay
    weapon.damageType = DamageType.Energy
    weapon.hullDamageMultiplier = 15
    
    weapon.smaterial = material
    weapon.stoneDamageMultiplier = WeaponGenerator.getStoneDamageMultiplier()


    weapon.blength = weapon.reach
    weapon.bshape = BeamShape.Straight


    weapon.binnerColor = ColorARGB(material.color.a * 0.5, material.color.r * 0.5, material.color.g * 0.5, material.color.b * 0.5)
    weapon.bwidth = 0.5
    weapon.bauraWidth = 1
    weapon.banimationSpeed = 4


    weapon.stoneRawEfficiency = math.abs(0.63 + rand:getFloat(0, 0.06) + rarity.value * 0.06)
    weapon.metalRawEfficiency = math.abs(0.45 + rand:getFloat(0, 0.05) + rarity.value * 0.05)


    weapon.bouterColor = ColorRGB(0.255, 0.105, 0.175) -- #FF69AF


    WeaponGenerator.adaptWeapon(rand, weapon, tech, material, rarity)
    weapon.damage = weapon.damage * 15
    weapon.shieldDamageMultiplier = 0
    return weapon
            
end

generatorFunction[WeaponType.RawUtilityLaser] = WeaponGenerator.generateRawUtilityLaser