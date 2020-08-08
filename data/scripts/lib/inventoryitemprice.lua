--include("debug_func")

-- changed values for normal mining lasers and added strip miners
valueWeights[WeaponType.RawUtilityLaser] = 0.02

local OldArmedObjectPrice = ArmedObjectPrice
function ArmedObjectPrice(object)
    local value = OldArmedObjectPrice(object)

    if object.__avoriontype == "InventoryTurret" then
        if string.find(object.weaponPrefix, "R-Utility") ~= nil then
            -- 75% discount for our weapon
            value = value * 0.01
            --print("Nice, 95% discount for " .. object.weaponPrefix .. ", price: " .. value)
        end
    end

    return value
end


