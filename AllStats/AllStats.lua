function NewPaperDollFrame_UpdateStats(self)
  PaperDollFrame_SetStat(AllStatsFrameStat1, 1)
  PaperDollFrame_SetStat(AllStatsFrameStat2, 2)
  PaperDollFrame_SetStat(AllStatsFrameStat3, 3)
  PaperDollFrame_SetStat(AllStatsFrameStat4, 4)
  PaperDollFrame_SetStat(AllStatsFrameStat5, 5)

  PaperDollFrame_SetDamage(AllStatsFrameStatMeleeDamage)
  AllStatsFrameStatMeleeDamage:SetScript("OnEnter", CharacterDamageFrame_OnEnter)
  PaperDollFrame_SetAttackSpeed(AllStatsFrameStatMeleeSpeed)
  PaperDollFrame_SetAttackPower(AllStatsFrameStatMeleePower)
  PaperDollFrame_SetRating(AllStatsFrameStatMeleeHit, CR_HIT_MELEE)
  PaperDollFrame_SetMeleeCritChance(AllStatsFrameStatMeleeCrit)
  PaperDollFrame_SetExpertise(AllStatsFrameStatMeleeExpert)

  PaperDollFrame_SetRangedDamage(AllStatsFrameStatRangeDamage)
  AllStatsFrameStatRangeDamage:SetScript("OnEnter", CharacterRangedDamageFrame_OnEnter)
  PaperDollFrame_SetRangedAttackSpeed(AllStatsFrameStatRangeSpeed)
  PaperDollFrame_SetRangedAttackPower(AllStatsFrameStatRangePower)
  PaperDollFrame_SetRating(AllStatsFrameStatRangeHit, CR_HIT_RANGED)
  PaperDollFrame_SetRangedCritChance(AllStatsFrameStatRangeCrit)

  PaperDollFrame_SetSpellBonusDamage(AllStatsFrameStatSpellDamage)
  AllStatsFrameStatSpellDamage:SetScript("OnEnter", CharacterSpellBonusDamage_OnEnter)
  PaperDollFrame_SetSpellBonusHealing(AllStatsFrameStatSpellHeal)
  PaperDollFrame_SetRating(AllStatsFrameStatSpellHit, CR_HIT_SPELL)
  PaperDollFrame_SetSpellCritChance(AllStatsFrameStatSpellCrit)
  AllStatsFrameStatSpellCrit:SetScript("OnEnter", CharacterSpellCritChance_OnEnter)
  PaperDollFrame_SetSpellHaste(AllStatsFrameStatSpellHaste)
  PaperDollFrame_SetManaRegen(AllStatsFrameStatSpellRegen)

  PaperDollFrame_SetArmor(AllStatsFrameStatArmor)
  PaperDollFrame_SetDefense(AllStatsFrameStatDefense)
  PaperDollFrame_SetDodge(AllStatsFrameStatDodge)
  PaperDollFrame_SetParry(AllStatsFrameStatParry)
  PaperDollFrame_SetBlock(AllStatsFrameStatBlock)
  PaperDollFrame_SetResilience(AllStatsFrameStatResil)
end

function AllStats_OnLoad(self)
  CharacterAttributesFrame:Hide()
  AllStatsFrame:Show()
  CharacterModelFrame:SetHeight(300)
  PaperDollFrame_UpdateStats = NewPaperDollFrame_UpdateStats
end