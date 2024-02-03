function peform_start_spawn()
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false)
    anticrash_faction_start_spawn(faction_keys.ALANI, region_keys.PETRODAVA,
               all_armies_coordinates.army_zero, unit_list);
    anticrash_faction_start_spawn(faction_keys.OSTGOTHS, region_keys.PETRODAVA,
               all_armies_coordinates.army_zero_2, unit_list);
    anticrash_faction_start_spawn(faction_keys.GREITUNGI, region_keys.PETRODAVA,
               all_armies_coordinates.army_zero_3,
               "rex_robbers_brigade,rex_robb_squad_brigands,rex_robbers_bows,rex_robbers_bows,rex_robb_band_archers");
end
