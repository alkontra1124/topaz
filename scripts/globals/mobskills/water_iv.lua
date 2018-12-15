---------------------------------------------------
-- Water IV
-- Deals water elemental damage. Damage varies with TP.
---------------------------------------------------

require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)

    dmgmod = 1
    info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 8,dsp.magic.ele.WATER,dmgmod,TP_MAB_BONUS,1)
    dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WATER,MOBPARAM_WIPE_SHADOWS)
    target:takeDamage(dmg, mob)
    return dmg

end