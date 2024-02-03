SAFE_DISTANCE_FROM_PLAYER = 20;
SAFE_DISTANCE_FROM_OTHER_FACTIONS = 8;
SPAWN_ATTEMPTS = 10;

local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

function anticrash_faction_start_spawn(faction_key, region_key,
                                       army_coordinates, unit_array)
    local spawn_pos = find_spawn(army_coordinates);

    cm:create_force(faction_key, unit_array, region_key, spawn_pos.x,
                    spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", faction_key, -1);
    end);
end

function find_spawn(army_coordinates)
    local pos = nil;

    for _ = 1, 2 do
        for i = 0, SPAWN_ATTEMPTS do
            local random_spawn = cm:random_number(#army_coordinates);

            if is_valid_spawn(army_coordinates[random_spawn].x,
                              army_coordinates[random_spawn].y, i == 1) then
                pos = army_coordinates[random_spawn];
                table.remove(army_coordinates, random_spawn);
                return pos;
            end
        end
    end

    pos = army_coordinates[1];
    table.remove(army_coordinates, 1);
    return pos;
end

function is_valid_spawn(x, y, safe_check)
    local faction_list = cm:model():world():faction_list();
    local safe_distance;
    for i = 0, faction_list:num_items() - 1 do
        local current_faction = faction_list:item_at(i);

        if current_faction:is_human() then
            safe_distance = SAFE_DISTANCE_FROM_PLAYER;
        else
            safe_distance = SAFE_DISTANCE_FROM_OTHER_FACTIONS;
        end

        if safe_check == false then safe_distance = 3; end

        local military_force_list = current_faction:military_force_list();

        for j = 0, military_force_list:num_items() - 1 do
            local current_military_force = military_force_list:item_at(j);

            if current_military_force:has_general() then
                local character = current_military_force:general_character();
                if distance(character:logical_position_x(),
                            character:logical_position_y(), x, y) <
                    safe_distance then return false; end
            end
        end
    end

    return true;
end

function distance(x1, y1, x2, y2)
    return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2);
end

