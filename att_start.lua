-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--
--	CAMPAIGN SCRIPT
--
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
intro_cinematic_str = false; -- ����� ������, ����� ������� ��������

function set_intro_cinematic(str) intro_cinematic_str = str; end

-- play intro movie
cm:register_ui_created_callback(function()
    if cm:is_new_game() then

        -- if one of the faction scripts has set an intro movie string, play it
        -- ���� ���� �� �������� ������� ��������� ������ �����-������, �������� ��
        if is_string(intro_cinematic_str) then
            output("Playing intro movie, key is [" .. intro_cinematic_str .. "]");
            cm:register_movies(intro_cinematic_str);
        end
    end
end);

-- camera extents
-- cm:set_default_zoom_limit(1.00, 0.8);

-- put stuff that needs to be started regardless of the faction being played here
-- �������� � ��� ����-�������, ������� ����� ���������, ���������� �� ����, ����� ������� ������
function start_game_all_factions() -- ������� ����� ���� ���� �������
    output("start_game_all_factions() called"); -- ����� �� ����� ���� ��� � ������ �������

    -- ���� � ������ ������������ ����������, ������ ������ ����������������!
    ------- ������� �������� -------
    start_all_hun_preservation_systems();
    start_general_ability_trait_system();
    start_climate_change_monitor();
    start_attila_story_system();
    restrict_military_building();
    restrict_trade_building();
    restrict_religious_building();

    ------- ����� ���������� -------
    Add_Barbarian_Invasion_Listeners();

    -- ROMAN EMPIRE NO VASSALAGE --
    -- ������� ������� �� ����� ���� �������� --
    Restrict_Empire_Vassalage(EAST_ROMAN_EMPIRE_KEY, false); -- ���������� ������ �������(����_�������_���, ������-�� ��������!)
    Restrict_Empire_Vassalage(WEST_ROMAN_EMPIRE_KEY, false); -- ���������� ������ �������(����_�������_���, ������-�� ��������!)
    Add_Region_Count_On_Round_Start_Listener(); -- ������� ��� ����� �� ����������
    Count_Empire_Regions(); -- ������� ��� ����� �� ����������

    -- SANDS\�����
    if cm:is_multiplayer() == false then -- ���� CM(����� �� ������� ����� ��������): �������� ����������� ==(���������, ������ - ���� ��� ���������) ����� then\�����
        -----------------------------
        ------- SINGLE PLAYER -------
        ------- ����� ���� -------
        -----------------------------
        Add_Tanukhid_Raiding_Listeners();
        Add_Building_Locking_Listeners();
        Add_Religious_Event_Listeners();

        -- Axum
        Add_Axum_Events_Listeners();
        Add_Axum_Mechanics_Listeners();

        -- Himyar
        Add_Himyar_Events_Listeners();
        Add_Himyar_Mechanics_Listeners();

        -- Tanukhids
        Add_Tanukhids_Events_Listeners();
        Add_Tanukhids_Mechanics_Listeners();

        -- Lakhmids
        Add_Lakhmids_Events_Listeners();
        Add_Lakhmids_Mechanics_Listeners();

        -- ALFRED LOGIC
        init_alfred_turn_manager();

        -- ADITIONAL ARMY SPAWN
        if cm:is_new_game() then peform_start_spawn() end

    else -- � ��������� ������ ��������� ���������� ����..
        -----------------------------
        ------- MULTI PLAYER --------
        -----------------------------
        Add_Tanukhid_Raiding_Listeners();
        Add_Building_Locking_Listeners();

        -- Axum
        Add_Axum_Events_Listeners();
        Add_Axum_Mechanics_Listeners();

        -- Himyar
        Add_Himyar_Events_Listeners();
        Add_Himyar_Mechanics_Listeners();

        -- Tanukhids
        Add_Tanukhids_Events_Listeners();
        Add_Tanukhids_Mechanics_Listeners();

        -- Lakhmids
        Add_Lakhmids_Mechanics_Listeners();
    end

    -- SLAVS
    if cm:is_multiplayer() == false then
        -----------------------------
        ------- SINGLE PLAYER -------
        -----------------------------
        Add_Antes_Events_Listeners();
        Add_Sclaveni_Events_Listeners();
        Add_Venedi_Events_Listeners();
        Add_Wonder_Event_Listeners();
    else
        -----------------------------
        ------- MULTI PLAYER --------
        -----------------------------
        Add_Wonder_Event_Listeners();
    end

    -- �������� �����
    if cm:is_new_game() then
        cm:add_event_restricted_unit_record("rex_goth_band_militon_tervingi_F");
        cm:add_event_restricted_unit_record(
            "rex_goth_band_aihvamanne_greutungi_F");
        cm:add_event_restricted_unit_record(
            "rex_goth_band_gadrauhteis_tervingi_F");
        cm:add_event_restricted_unit_record(
            "rex_goth_band_gadrauhteis_greutungi_F");
    end

    -- CIVIL WAR FIX
    Add_CivilWarFix_Listeners();
end
