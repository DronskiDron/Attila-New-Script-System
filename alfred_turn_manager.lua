function init_alfred_turn_manager()

    cm:add_listener("start_turn_checks", "FactionTurnStart",
                    function(context) return context:faction():is_human() end,
                    function(context) check_working() end, true);
end

function has_the_time_come(spawn_year, spawn_season)
    local turn_epsilon = 0.01
    local current_turn = cm:model():turn_number()
    local turn = (spawn_year - 367) * 4 + spawn_season
    return math.abs(turn - current_turn) <= turn_epsilon
end
