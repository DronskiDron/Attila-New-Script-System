local spawn_year = 367;
local spawn_season = 2;

function check_working()
    if (not has_the_time_come(spawn_year, spawn_season)) then return; end
    Hunn_Mlad_Spawn4();
end
