-- ���� ����������: 21-01-24 - ���������: ��������, ���� ��������, ����� ������ �������, ����� ������ ��� ������� ��� ���������� - ����� �����!!! ����� +1000 � ����,
-- 			����� �����������, ������� �� - ����� ���� ���� ����� ��� ������, ��� ��������� (����� ����), ������� ��������, �������� ����� �����,
-- 			��������� ��� ������ ������� ������
-- ---------------------------------------------------------------------------------------------------
--	�������: create_force ��������: ������� ������-������� ���� ��� ����� � �������. 
--	�������� �������� ���������, ����� �� ������� ��������� ����� ������� ������. 
--	�������������: 
--	create_force (�faction_key�, �unit_list�, �region_key�, x_position, y_position, �id�, true)
-- ���������� create_force () ��� �������� ���� ���� ��������������� (���� ���� �� ���� ������� ����� ������� ������), ����
-- ����� ������� ScriptedForceCreated (���� ���� ���� ������� ����� ������� ������). ��� ������� ����� ����� ��������� ������
-- cqi � ���������� ��� ����������� ����. ��������� ����������� ����� �������������� ����� ���� �������� �� ����� ������� ScriptedForceCreated
-- ���������, ��� ��� ���� ��� ������� �� ����� ����� ����, ������� ��� ���� ����� ���� �������� ����������� �����, � ���
-- ��������������� ����� ����� ��������� �����.
-- ---------------------------------------------------------------------------------------------------
-- �����! ��� �� ������� � ���������, ��� �� ������������ �����! ���������� ������� � ������ ���������
-- �����������(���������) ������ ����� ������� ������� ��� � ������� ����������!
-- ---------------------------------------------------------------------------------------------------
-- ������ � ������ ����� ��� ������ ��������	if is_intro then
HUNS_STAP_KEY = "att_fact_white_huns"; -- ���� ������� ������(�������).
HUNS_SRED_KEY = "att_fact_magyars"; -- ���� ������� ������(�������).
HUNS_MLAD_KEY = "att_fact_budini"; -- ���� ������� ������(�������).

VESTGOTHS_KEY = "att_fact_visigothi"; -- ���� ������� ���������
OSTGOTHS_KEY = "att_fact_ostrogothi"; -- ���� ������� ��������
GEPIDS_KEY = "att_fact_gepidae"; -- ���� ������� �������
VANDALI_KEY = "att_fact_vandali";
ALANI_KEY = "att_fact_alani";
AESTI_KEY = "att_fact_venedi";
SVEBI_KEY = "att_fact_suebi";
KVADI_KEY = "att_fact_quadi";
BURGUNDI_KEY = "att_fact_burgundii";
ALEMANNI_KEY = "att_fact_alamanni";
LANGOBARDI_KEY = "att_fact_langobardi";
FRANCI_KEY = "att_fact_franci";
SAXI_KEY = "att_fact_saxones";
YUTI_KEY = "att_fact_iuti";
EBDANI_KEY = "att_fact_ebdani";
PICTI_KEY = "att_fact_picti";
VOTADINI_KEY = "att_fact_votadini";
RUGII_KEY = "att_fact_rugii";
GREITUNGI_KEY = "att_fact_greuthingi";
HERULI_KEY = "heruli";
ISAVRI_KEY = "att_fact_separatist_caucasian";
ANTIOHIA_KEY = "att_fact_oriens";
SASSANID_KEY = "att_fact_sassanid_empire";
EXPEDITION_KEY = "att_fact_western_roman_empire"; -- ���
EMPIRE_KEY = "att_fact_eastern_roman_empire"; -- ���
INSURGENT_KEY = "roman"; -- ����
ROBBERS_HUNN_KEY = "att_fact_separatist_white_huns"; -- �������� �����
REBEL_MAVRITANIA_KEY = "att_fact_africa";
BAGAUDAE_KEY = "att_fact_hunni";
TANUKHIDS_KEY = "att_fact_tanukhids";
IAZYGES_KEY = "iazyges";
ARMENIA_KEY = "att_fact_armenia";
AXUM_KEY = "att_fact_axum";
GARAMANTI_KEY = "att_fact_garamantes";
GETI_KEY = "att_fact_gauti";
HIMYAR_KEY = "att_fact_himyar";
LAKHMIDI_KEY = "att_fact_lakhmids";
SARACINI_KEY = "att_fact_tanukhids";
ROXOLANI_KEY = "roxolani";
-- �� ��������!!! VENEDI_KEY = "venedi";

-- ---------------------------------------------------------------------------------------------------
ELDERS_HUNS_TRIGGERED = false;
ELDERS_HUNS_TRIGGERED2 = false;

HUNS_TRIGGERED = false;
HUNS_TRIGGERED1 = false;
HUNS_TRIGGERED2 = false;
HUNS_SRED_TRIGGERED = false;
HUNS_MLAD_TRIGGERED = false;
HUNS_SRED_TRIGGERED2 = false;
HUNS_MLAD_TRIGGERED2 = false;
HUNS_SRED_TRIGGERED3 = false;
HUNS_MLAD_TRIGGERED3 = false;
HUNS_MLAD_TRIGGERED4 = 0;
FEDERATS_TRIGGERED = false;
FEDERATS_PACT = false;
ROMAN_TRIGGERED = false;
ROMAN_TRIGGERED2 = false;
MAVRITANIA_TRIGGERED = false;
GREITUNGI_TRIGGERED = false;
GREITUNGI_TRIGGERED2 = false;
BAGAUDAE_TRIGGERED = false;
Sarmatov_Kvadov_TRIGGERED = false;
ISAVRI_TRIGGERED = false;
ANTIOHIA_TRIGGERED = false;
MACEDONIA_TRIGGERED = false;
VESTGOTI2_TRIGGERED = 0;
WRE_TRIGGERED_SRAWN = 0;
ERE_TRIGGERED_SRAWN = 0;
SARACINI_SRAWN = 0;

VALENT_DEAD = 0;
VALENT_NAME = "names_name_2147326682";
VALENT_NAME2 = "names_name_2147351219";
VALENT_NAME4 = "names_name_2147319642";
GREITUNGI_LEADER_DEAD = 0;
WRE_TRIGGERED = 0;
GREITUNGI_LEADER = 0;

ZERO_TRIGGERED = 0;
ALANI_TRIGGERED = 0;
OSTGOTI_TRIGGERED = 0;
VESTGOTI_TRIGGERED = 0;
VANDALANI_TRIGGERED = 0;
VENEDI_TRIGGERED = 0;
SVEBI_TRIGGERED = 0;
ROXOLANI_TRIGGERED = 0;
KVADI_TRIGGERED = 0;
GEPIDI_TRIGGERED = 0;
BURGUNDI_TRIGGERED = 0;
ALEMANNI_TRIGGERED = 0;
LANGOBARDI_TRIGGERED = 0;
FRANCI_TRIGGERED = 0;
SAXI_TRIGGERED = 0;
YUTI_TRIGGERED = 0;
EBDANI_TRIGGERED = 0;
PICTI_TRIGGERED = 0;
VOTADINI_TRIGGERED = 0;

ROMAN_EMPIRE = false;

PEREMIRIE = 9; -- 9
INVASION_HUNN_TURN1 = 1; -- �������� �������� ������
INVASION_HUNN_TURN = 10; -- ������ ����� �������� ������
INVASION_HUNN_TURN2 = 16; -- ������ ����� �������� ������, ���������� ������� �����
INVASION_HUNN_ELDERS_TURN = 17; -- ������� (�����), ���������� ������� �����, ���������� ��� ���������, 17
INVASION_HUNN_SRED_TURN = 18; -- ������� (�����), 18
INVASION_HUNN_MLAD_TURN = 20; -- ������� (�����), 20 ����� ����
INVASION_HUNN_SRED_TURN2 = 24; -- ������� (�����), 24
INVASION_HUNN_MLAD_TURN2 = 26; -- ������� (�����), ���������� �����, 26 ����� ����
INVASION_HUNN_SRED_TURN3 = 30; -- ������� (�����), 30
INVASION_HUNN_MLAD_TURN3 = 32; -- ������� (�����), 32 ����� ����, 	�������� ����� ��!
INVASION_HUNN_ELDERS_TURN2 = 48; -- ������� (�����), ���������� ������� �����, ���������� ��� ���������, 48
INVASION_BAGAUDAE_TURN = 5; -- ��������� �������� 1 ����, 5 ���
INVASION_HUNN_MLAD_TURN4 = 86; -- ��������� ������ � ������, 86 ���
INVASION_HUNN_MLAD_TURN5 = 90; -- ��������� ������ � ������, 90 ���
INVASION_HUNN_MLAD_TURN6 = 94; -- ��������� ������ � ������, 94 ���

-- �������� ��������� �������� 6
-- ��������� ������������ �������� ����� 1 ����, 20 ���
-- ��������� ��������� 1 - 52 ���, 2 � ������ 60
-- ��������� �������� � ������ - 29 ���
-- ��������� ������� - 37 ���
-- ������� ��������� ����� ����� - 41 ���
-- ��������� ������� �����(����������) ����� ����� - 77 ���
-- ��������� � �������� - 81 ���
-- ������� ��������� � ���������� ��������� ��������(����������) �� ����� � ����� � ��������� (��������) - 98 ���

SPAWN_ATTEMPTS = 10;

byzantine_home_region = "att_reg_italia_roma";

function Add_Barbarian_Invasion_Listeners() -- ������� ���������
    output("#### Adding Antonina Incident Listeners ####");

    SetupZeroArmyTemplates();
    SetupRomanArmyTemplates();
    SetupBarbarianArmyTemplates();
    SetupErrorArmyTemplates();
    SetupGreithungiArmyTemplates();
    SetupMigrationArmyTemplates();
    cm:add_listener( -- ���������� ������������ ���������_��������
    "FactionTurnStart_BI", "FactionTurnStart", -- ������� � ������ ����, ����� "FactionTurnStart"
    true, function(context)
        Great_Invasion(context);

        Immortality_Character_Check(context);
        TRIGGERED_Exodus(context);

        Great_Exodus(context);

        Inflation(context);

    end, true);

    cm:add_listener("FactionTurnStart_BI2", "FactionTurnStart", true,

                    function(context) Dogovor_Federati(context); end, true);

end

-- ------------------------------------------------------------------------------------------------

REGIONS_WRE = {
    "att_reg_belgica_augusta_treverorum", "att_reg_maxima_sequanorum_vesontio",
    "att_reg_lugdunensis_lugdunum", "att_reg_narbonensis_aquae_sextiae",
    "att_reg_baetica_corduba", "att_reg_liguria_mediolanum",
    "att_reg_venetia_ravenna", "att_reg_italia_roma",
    "att_reg_magna_graecia_tarentum", "att_reg_dalmatia_salona"
};

army_euro = {{x = 300, y = 516}, {x = 350, y = 521}, {x = 390, y = 497}};

army_zero = {{x = 952, y = 308}, {x = 953, y = 308}, {x = 954, y = 308}};

army_zero2 = {{x = 952, y = 309}, {x = 953, y = 309}, {x = 954, y = 309}};

army_zero3 = {{x = 952, y = 310}, {x = 953, y = 310}, {x = 954, y = 310}};

army_zero4 = {{x = 952, y = 311}, {x = 953, y = 311}, {x = 954, y = 311}};

army_zero5 = {{x = 952, y = 312}, {x = 953, y = 312}, {x = 954, y = 312}};

army_zero6 = {{x = 952, y = 313}, {x = 953, y = 313}, {x = 954, y = 313}};

army_zero7 = {{x = 952, y = 314}, {x = 953, y = 314}, {x = 954, y = 314}};

army_zero8 = {{x = 952, y = 315}, {x = 953, y = 315}, {x = 954, y = 315}};

army_zero9 = {{x = 952, y = 316}, {x = 953, y = 316}, {x = 954, y = 316}};

army_zero10 = {{x = 952, y = 317}, {x = 953, y = 317}, {x = 954, y = 317}};

army_zero11 = {{x = 952, y = 318}, {x = 953, y = 318}, {x = 954, y = 318}};

army_zero12 = {{x = 952, y = 319}, {x = 953, y = 319}, {x = 954, y = 319}};

army_zero13 = {{x = 952, y = 320}, {x = 953, y = 320}, {x = 954, y = 320}};

army_zero14 = {{x = 952, y = 321}, {x = 953, y = 321}, {x = 954, y = 321}};

army_zero15 = {{x = 952, y = 322}, {x = 953, y = 322}, {x = 954, y = 322}};

army_zero16 = {{x = 952, y = 323}, {x = 953, y = 323}, {x = 954, y = 323}};

army_zero17 = {{x = 952, y = 324}, {x = 953, y = 324}, {x = 954, y = 324}};

army_east = {{x = 940, y = 310}, {x = 935, y = 312}};

army_galliya = {{x = 193, y = 474}, {x = 131, y = 492}, {x = 191, y = 537}};

army_sarmatiya = {
    {x = 600, y = 450}, {x = 593, y = 470}, {x = 582, y = 523},
    {x = 546, y = 501}, {x = 601, y = 488}, {x = 546, y = 478},
    {x = 539, y = 524}, {x = 529, y = 546}, {x = 580, y = 552},
    {x = 436, y = 550}
};

army_brittania = {
    {x = 108, y = 548}, -- ������� ��� papeion
    {x = 118, y = 545}, -- ������� ��� papeion
    {x = 118, y = 547}, {x = 140, y = 550}
};

army_chersonessus = {
    {x = 595, y = 447}, {x = 596, y = 446}, {x = 597, y = 444},
    {x = 596, y = 451}
};

army_leopolis = {
    {x = 454, y = 536}, {x = 454, y = 536}, {x = 475, y = 532},
    {x = 490, y = 520}
};

army_petrodava = {
    {x = 519, y = 465}, {x = 524, y = 479}, {x = 527, y = 458},
    {x = 525, y = 478}, {x = 527, y = 456}
};

army_markianorol = {
    {x = 514, y = 404}, {x = 515, y = 417}, {x = 514, y = 416},
    {x = 510, y = 420}
};

army_budorgis = {
    {x = 371, y = 557}, {x = 390, y = 566}, {x = 376, y = 567},
    {x = 376, y = 567}, {x = 393, y = 571}, {x = 380, y = 547},
    {x = 393, y = 558}, {x = 400, y = 540}, {x = 401, y = 541},
    {x = 382, y = 568}
};

army_budorgis2 = {{x = 404, y = 535}, {x = 413, y = 556}};

army_apulum = {{x = 441, y = 467}, {x = 440, y = 468}, {x = 440, y = 472}};

army_germania = {
    {x = 300, y = 515}, {x = 380, y = 568}, {x = 315, y = 550},
    {x = 350, y = 510}
};

army_frisia = {{x = 290, y = 590}, {x = 291, y = 591}, {x = 290, y = 605}};

army_caledonia = {{x = 105, y = 632}, {x = 106, y = 631}, {x = 105, y = 630}};

army_mavritania = {{x = 138, y = 247}, {x = 121, y = 241}, {x = 125, y = 244}};

army_Sarmatov_Kvadov = {{x = 412, y = 441}, {x = 413, y = 439}};

army_Isavri = {{x = 565, y = 308}, {x = 565, y = 311}};

army_Makedonia = {{x = 438, y = 348}, {x = 440, y = 345}};

army_Antiohia = {{x = 647, y = 290}, {x = 647, y = 290}};

army_Arabia = {{x = 660, y = 250}, {x = 663, y = 252}, {x = 665, y = 251}};

army_WRE = {
    {x = 312, y = 417}, {x = 322, y = 414}, {x = 306, y = 390},
    {x = 318, y = 417}, {x = 322, y = 414}, {x = 321, y = 413},
    {x = 305, y = 389}, {x = 313, y = 421}, {x = 323, y = 415},
    {x = 307, y = 386}
};

army_ERE = {
    {x = 490, y = 381}, {x = 511, y = 384}, {x = 563, y = 369},
    {x = 554, y = 368}, {x = 511, y = 386}, {x = 510, y = 384},
    {x = 562, y = 368}, {x = 553, y = 367}, {x = 510, y = 385},
    {x = 524, y = 357}
};

army_ant = {{x = 667, y = 484}, {x = 582, y = 525}, {x = 705, y = 505}};

-------------------------------------------------------------------
-- ������� ���������
-------------------------------------------------------------------

function Great_Invasion(context)
    local turn_number = cm:model():turn_number();
    local faction = cm:model():world():faction_by_key(HUNS_STAP_KEY); -- 
    local faction0 = cm:model():world():faction_by_key(ALANI_KEY); -- 
    local faction2 = cm:model():world():faction_by_key(OSTGOTHS_KEY); -- 
    local faction3 = cm:model():world():faction_by_key(VESTGOTHS_KEY); -- 
    local faction4 = cm:model():world():faction_by_key(VANDALI_KEY); -- 
    local faction5 = cm:model():world():faction_by_key(SVEBI_KEY); -- 
    local faction6 = cm:model():world():faction_by_key(ROXOLANI_KEY); -- 
    local faction7 = cm:model():world():faction_by_key(KVADI_KEY); -- 
    local faction8 = cm:model():world():faction_by_key(GEPIDS_KEY); -- 
    local faction9 = cm:model():world():faction_by_key(BURGUNDI_KEY); -- 
    local faction10 = cm:model():world():faction_by_key(ALEMANNI_KEY); -- 
    local faction11 = cm:model():world():faction_by_key(LANGOBARDI_KEY); -- 
    local faction12 = cm:model():world():faction_by_key(FRANCI_KEY); -- 
    local faction13 = cm:model():world():faction_by_key(SAXI_KEY); -- 
    local faction14 = cm:model():world():faction_by_key(EBDANI_KEY); -- 
    local faction15 = cm:model():world():faction_by_key(VOTADINI_KEY); -- 
    local faction16 = cm:model():world():faction_by_key(GREITUNGI_KEY); -- 
    local faction17 = cm:model():world():faction_by_key(INSURGENT_KEY); -- 
    local faction06 = cm:model():world():faction_by_key(RUGII_KEY); -- 
    local faction18 = cm:model():world():faction_by_key(TANUKHIDS_KEY); -- 

    if turn_number == 1 then
        -- ���� ������ ���
        Obbyavit_dip_otn_ne_igrok();
        Obbyavit_dip_otn_ne_igrok2();
        WRE_TRIGGERED = WRE_TRIGGERED + 1;
        VALENT_DEAD = cm:model():world():faction_by_key(EMPIRE_KEY)
                          :faction_leader():command_queue_index();

    end

    if turn_number == PEREMIRIE then
        -- ���� ��� ���������
        Obbyavit_Mir();
    end

    if turn_number == 5 then
        --  5
        Obbyavit_Vassal1(); -- �������� ��������� ��������
    end

    if ELDERS_HUNS_TRIGGERED == false and turn_number ==
        INVASION_HUNN_ELDERS_TURN then
        -- 
        if not faction:is_human() then -- 
            Elders_Hunn_Spawn(); -- ���� 
        end
    end

    if ELDERS_HUNS_TRIGGERED2 == false and turn_number ==
        INVASION_HUNN_ELDERS_TURN2 then
        -- 
        if not faction:is_human() then -- 
            Elders_Hunn_Spawn2(); -- ���� 
        end
    end

    if HUNS_TRIGGERED1 == false and turn_number == INVASION_HUNN_TURN1 then
        -- 
        if not faction == faction:is_human() then -- 
            Hunn_Spawn1(); -- ���� 
        end
    end

    if HUNS_TRIGGERED == false and turn_number == INVASION_HUNN_TURN then
        -- 
        if not faction == faction:is_human() then Hunn_Spawn(); end
    end

    if HUNS_TRIGGERED2 == false and turn_number == INVASION_HUNN_TURN2 then
        -- 
        if not faction == faction:is_human() then Hunn_Spawn2(); end
    end

    if BAGAUDAE_TRIGGERED == false and turn_number == INVASION_BAGAUDAE_TURN then
        -- 
        if not faction == faction:is_human() then Bagaud_Spawn(); end
    end

    if HUNS_SRED_TRIGGERED == false and turn_number == INVASION_HUNN_SRED_TURN then
        -- 
        Hunn_Sred_Spawn();
    end

    if HUNS_MLAD_TRIGGERED == false and turn_number == INVASION_HUNN_MLAD_TURN then
        -- 
        Hunn_Mlad_Spawn();
    end

    if HUNS_SRED_TRIGGERED2 == false and turn_number == INVASION_HUNN_SRED_TURN2 then
        -- 
        Hunn_Sred_Spawn2();
    end

    if HUNS_MLAD_TRIGGERED2 == false and turn_number == INVASION_HUNN_MLAD_TURN2 then
        -- 
        Hunn_Mlad_Spawn2();
    end

    if HUNS_SRED_TRIGGERED3 == false and turn_number == INVASION_HUNN_SRED_TURN3 then
        -- 
        Hunn_Sred_Spawn3();
    end

    if HUNS_MLAD_TRIGGERED3 == false and turn_number == INVASION_HUNN_MLAD_TURN3 then
        -- 
        Hunn_Mlad_Spawn3();
    end

    if SARACINI_SRAWN < 2 and turn_number == INVASION_HUNN_MLAD_TURN3 then
        -- 
        Spawn_Tanukhids();
    end

    if HUNS_MLAD_TRIGGERED4 < 1 and turn_number == INVASION_HUNN_MLAD_TURN4 then
        -- 
        Hunn_Mlad_Spawn4();
    end
    if HUNS_MLAD_TRIGGERED4 < 2 and turn_number == INVASION_HUNN_MLAD_TURN5 then
        -- 
        Hunn_Mlad_Spawn4();
    end
    if HUNS_MLAD_TRIGGERED4 < 3 and turn_number == INVASION_HUNN_MLAD_TURN6 then
        -- 
        Hunn_Mlad_Spawn4();
    end

    if context:faction():name() == SASSANID_KEY and
        not context:faction():is_human() == true then
        cm:apply_effect_bundle("rex_bundle_treaty_loyalty", SASSANID_KEY, -1);

    elseif context:faction():name() == EXPEDITION_KEY and
        not context:faction():is_human() == true then
        cm:apply_effect_bundle("rex_bundle_treaty_loyalty", EXPEDITION_KEY, -1);

    elseif context:faction():name() == EMPIRE_KEY and
        not context:faction():is_human() == true then
        cm:apply_effect_bundle("rex_bundle_treaty_loyalty", EMPIRE_KEY, -1);

    end

    if ROMAN_TRIGGERED == false and turn_number == 52 then
        --  52
        Spawn_Roman();
    end

    if ROMAN_TRIGGERED2 == false and turn_number == 60 then
        --  60
        Spawn_Roman2();
    end

    if turn_number == 53 then
        --  53
        cm:force_declare_war("roman", "att_fact_western_roman_empire");
    end

    if MAVRITANIA_TRIGGERED == false and turn_number == 20 then
        --  20
        Spawn_RomaMavritania();
    end

    if turn_number == 21 then
        --  21
        cm:force_declare_war("att_fact_africa", "att_fact_western_roman_empire"); -- 
    end

    if Sarmatov_Kvadov_TRIGGERED == false and turn_number == 29 then
        --  29
        Spawn_Sarmatov_Kvadov();
    end

    if ISAVRI_TRIGGERED == false and turn_number == 37 then
        --  37
        Spawn_Isavri();
    end

    if turn_number == 38 then
        --  38
        cm:force_declare_war("att_fact_separatist_caucasian",
                             "att_fact_eastern_roman_empire"); -- 
    end

    if VESTGOTI2_TRIGGERED >= 0 and VESTGOTI2_TRIGGERED < 3 and turn_number ==
        41 then
        --  41
        Spawn_Vestgoti2();
    end

    if turn_number == 48 then
        --  48
        Hunn_Spawn();
    end

    if GREITUNGI_TRIGGERED2 == false and turn_number == 77 then
        --  77
        Spawn_Greithungi2();
    end

    if turn_number == 78 then
        --  78
        cm:force_declare_war("att_fact_greuthingi",
                             "att_fact_eastern_roman_empire");
    end

    if ANTIOHIA_TRIGGERED == false and turn_number == 81 then
        --  81
        Spawn_Antiohia();
    end

    if turn_number == 82 then
        --  82
        cm:force_declare_war("att_fact_oriens", "att_fact_eastern_roman_empire");
    end

    if MACEDONIA_TRIGGERED == false and turn_number == 98 then
        --  98
        Spawn_Macedonia();
    end

    if GREITUNGI_TRIGGERED == false and turn_number == 19 then
        -- ���� ��� ��������� ���������� 19
        --		cm:force_rebellion_in_region("att_reg_sarmatia_europaea_chersonessus", 19, "voiska_Greithung", 596, 452, false);	-- ��������, �� ������-�� 4 ����� ������!
        Vosstanie_Greithungov(context);
    end

    if ALANI_TRIGGERED > 2 and ALANI_TRIGGERED < 5 then
        -- ���� ������ = 3
        Vosstanie_Alanov(context);
    end

    if OSTGOTI_TRIGGERED > 2 and OSTGOTI_TRIGGERED < 5 then
        -- ���� ������ = 3
        Vosstanie_Ostgotov(context);
    end

    if VESTGOTI_TRIGGERED > 2 and VESTGOTI_TRIGGERED < 5 then
        -- ���� ������ = 3
        Vosstanie_Vestgotov(context);
    end

    if VANDALANI_TRIGGERED > 2 and VANDALANI_TRIGGERED < 5 then
        -- ���� ������ = 3
        Vosstanie_Vandalov(context);
    end

    if SVEBI_TRIGGERED > 2 and SVEBI_TRIGGERED < 5 then
        -- ���� ������ = 3	
        Vosstanie_Svebov(context);
    end

    if VENEDI_TRIGGERED > 2 and VENEDI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Venedov(context);
    end

    if ROXOLANI_TRIGGERED > 2 and ROXOLANI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Roxolanov(context);
    end

    if GEPIDI_TRIGGERED > 2 and GEPIDI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Gepidov(context);
    end

    if BURGUNDI_TRIGGERED > 2 and BURGUNDI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Burgundov(context);
    end

    if ALEMANNI_TRIGGERED > 2 and ALEMANNI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Alemannov(context);
    end

    if LANGOBARDI_TRIGGERED > 2 and LANGOBARDI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Langobardov(context);
    end

    if FRANCI_TRIGGERED > 2 and FRANCI_TRIGGERED < 5 then
        -- ���� ������ = 3
        Vosstanie_Frankov(context);
    end

    if SAXI_TRIGGERED > 2 and SAXI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Saxov(context);
    end

    if EBDANI_TRIGGERED > 2 and EBDANI_TRIGGERED < 4 then
        -- ���� ������ = 3
        Vosstanie_Skotov(context);
    end

    -- if turn_number == 201 then
    -- 201
    -- 	os.execute("start http://late-roman.ru/fireforged-empire/important-information/")
    -- end;
end

-------------------------------------------------------------------
-- ������� �����
-------------------------------------------------------------------

function Great_Exodus(context)
    local turn_number = cm:model():turn_number();
    local temp_region_Alani = cm:model():world():faction_by_key(ALANI_KEY)
                                  :region_list():num_items();
    local temp_region_Ostgoti = cm:model():world():faction_by_key(OSTGOTHS_KEY)
                                    :region_list():num_items();
    local temp_region_Vestgoti = cm:model():world()
                                     :faction_by_key(VESTGOTHS_KEY)
                                     :region_list():num_items();
    local temp_region_Vandalani = cm:model():world():faction_by_key(VANDALI_KEY)
                                      :region_list():num_items();
    local temp_region_Svebi = cm:model():world():faction_by_key(SVEBI_KEY)
                                  :region_list():num_items();
    local temp_region_Venedi = cm:model():world():faction_by_key(RUGII_KEY)
                                   :region_list():num_items();
    local temp_region_Roxolani = cm:model():world():faction_by_key(ROXOLANI_KEY)
                                     :region_list():num_items();
    local temp_region_Kvadi = cm:model():world():faction_by_key(KVADI_KEY)
                                  :region_list():num_items();
    local temp_region_Gepidi = cm:model():world():faction_by_key(GEPIDS_KEY)
                                   :region_list():num_items();
    local temp_region_Burgundi = cm:model():world():faction_by_key(BURGUNDI_KEY)
                                     :region_list():num_items();
    local temp_region_Alamanni = cm:model():world():faction_by_key(ALEMANNI_KEY)
                                     :region_list():num_items();
    local temp_region_Langobardi = cm:model():world():faction_by_key(
                                       LANGOBARDI_KEY):region_list():num_items();
    local temp_region_Franci = cm:model():world():faction_by_key(FRANCI_KEY)
                                   :region_list():num_items();
    local temp_region_Saxi = cm:model():world():faction_by_key(SAXI_KEY)
                                 :region_list():num_items();
    local temp_region_Ebdani = cm:model():world():faction_by_key(EBDANI_KEY)
                                   :region_list():num_items();
    local temp_region_Votadini = cm:model():world():faction_by_key(VOTADINI_KEY)
                                     :region_list():num_items();
    local temp_region_WRE = cm:model():world():faction_by_key(EXPEDITION_KEY)
                                :region_list():num_items();
    local temp_region_ERE = cm:model():world():faction_by_key(EMPIRE_KEY)
                                :region_list():num_items();
    local faction = context:faction();

    local factionWRE = cm:model():world():faction_by_key(EXPEDITION_KEY); -- 
    local factionERE = cm:model():world():faction_by_key(EMPIRE_KEY); -- 

    if context:faction():name() == "roman" and ROMAN_EMPIRE == false and
        temp_region_WRE < 1 then -- ���� ��� ������ � ��.
        NEW_WRE_Check(context);
    end

    if not faction:is_human() then
        if WRE_TRIGGERED_SRAWN >= 0 and WRE_TRIGGERED_SRAWN < 2 and
            temp_region_WRE < 62 then
            -- ���	
            if not factionWRE:is_human() then Spawn_WRE(); end
        end
        if ERE_TRIGGERED_SRAWN >= 0 and ERE_TRIGGERED_SRAWN < 2 and
            temp_region_ERE < 35 then
            -- ���	
            if not factionERE:is_human() then Spawn_ERE(); end
        end

        if WRE_TRIGGERED_SRAWN >= 2 and WRE_TRIGGERED_SRAWN < 4 and
            temp_region_WRE < 56 then

            if not factionWRE:is_human() then Spawn_WRE(); end
        end
        if ERE_TRIGGERED_SRAWN >= 2 and ERE_TRIGGERED_SRAWN < 4 and
            temp_region_ERE < 30 then

            if not factionERE:is_human() then Spawn_ERE(); end
        end

        if WRE_TRIGGERED_SRAWN >= 4 and WRE_TRIGGERED_SRAWN < 6 and
            temp_region_WRE < 45 then

            if not factionWRE:is_human() then Spawn_WRE(); end
        end
        if ERE_TRIGGERED_SRAWN >= 4 and ERE_TRIGGERED_SRAWN < 6 and
            temp_region_ERE < 24 then

            if not factionERE:is_human() then Spawn_ERE(); end
        end

        if WRE_TRIGGERED_SRAWN >= 6 and WRE_TRIGGERED_SRAWN < 8 and
            temp_region_WRE < 32 then

            if not factionWRE:is_human() then Spawn_WRE(); end
        end
        if ERE_TRIGGERED_SRAWN >= 6 and ERE_TRIGGERED_SRAWN < 8 and
            temp_region_ERE < 17 then

            if not factionERE:is_human() then Spawn_ERE(); end
        end

        if WRE_TRIGGERED_SRAWN >= 8 and WRE_TRIGGERED_SRAWN < 10 and
            temp_region_WRE < 23 then

            if not factionWRE:is_human() then Spawn_WRE(); end
        end
        if ERE_TRIGGERED_SRAWN >= 8 and ERE_TRIGGERED_SRAWN < 10 and
            temp_region_ERE < 12 then

            if not factionERE:is_human() then Spawn_ERE(); end
        end

        if WRE_TRIGGERED_SRAWN >= 10 and WRE_TRIGGERED_SRAWN < 12 and
            temp_region_WRE < 16 then
            -- 	
            if not factionWRE:is_human() then Spawn_WRE(); end
        end
        -- ------------------------------------------------------------------------------------------------------------------

        if WRE_TRIGGERED == 1 and temp_region_WRE < 6 then
            -- ���� 
            cm:kill_character("character_cqi:" .. VALENT_DEAD, false, true);
            WRE_TRIGGERED = WRE_TRIGGERED + 1;
        end

        if ALANI_TRIGGERED < 1 and temp_region_Alani < 2 then
            -- ���� 
            INT_Alani = 1 + cm:model():turn_number();
            ALANI_TRIGGERED = ALANI_TRIGGERED + 1;
        end
        if OSTGOTI_TRIGGERED < 1 and temp_region_Ostgoti < 2 then
            -- ���� 
            INT_Ostgoti = 1 + cm:model():turn_number();
            OSTGOTI_TRIGGERED = OSTGOTI_TRIGGERED + 1;
        end
        if VESTGOTI_TRIGGERED < 1 and temp_region_Vestgoti < 2 then
            -- ���� 
            INT_Vestgoti = 1 + cm:model():turn_number();
            VESTGOTI_TRIGGERED = VESTGOTI_TRIGGERED + 1;
        end
        if VANDALANI_TRIGGERED < 1 and temp_region_Vandalani < 1 then
            -- ���� 
            INT_Vandali = 1 + cm:model():turn_number();
            VANDALANI_TRIGGERED = VANDALANI_TRIGGERED + 1;
        end
        if SVEBI_TRIGGERED < 1 and temp_region_Svebi < 1 then
            -- ���� 
            INT_Svebi = 1 + cm:model():turn_number();
            SVEBI_TRIGGERED = SVEBI_TRIGGERED + 1;
        end
        if VENEDI_TRIGGERED < 1 and temp_region_Venedi < 1 then
            -- ���� 
            INT_Venedi = 1 + cm:model():turn_number();
            VENEDI_TRIGGERED = VENEDI_TRIGGERED + 1;
        end
        if ROXOLANI_TRIGGERED < 1 and temp_region_Roxolani < 1 then
            -- ���� 
            INT_Roxolani = 1 + cm:model():turn_number();
            ROXOLANI_TRIGGERED = ROXOLANI_TRIGGERED + 1;
        end
        if KVADI_TRIGGERED < 1 and temp_region_Kvadi < 1 then
            -- ���� 
            INT_Kvadi = 1 + cm:model():turn_number();
            KVADI_TRIGGERED = KVADI_TRIGGERED + 1;
        end
        if GEPIDI_TRIGGERED < 1 and temp_region_Gepidi < 1 then
            -- ���� 
            INT_Gepidi = 1 + cm:model():turn_number();
            GEPIDI_TRIGGERED = GEPIDI_TRIGGERED + 1;
        end
        if BURGUNDI_TRIGGERED < 1 and temp_region_Burgundi < 1 then
            -- ���� 
            INT_Burgundi = 1 + cm:model():turn_number();
            BURGUNDI_TRIGGERED = BURGUNDI_TRIGGERED + 1;
        end
        if ALEMANNI_TRIGGERED < 1 and temp_region_Alamanni < 1 then
            -- ���� 
            INT_Alamanni = 1 + cm:model():turn_number();
            ALEMANNI_TRIGGERED = ALEMANNI_TRIGGERED + 1;
        end
        if LANGOBARDI_TRIGGERED < 1 and temp_region_Langobardi < 1 then
            -- ���� 
            INT_Langobardi = 1 + cm:model():turn_number();
            LANGOBARDI_TRIGGERED = LANGOBARDI_TRIGGERED + 1;
        end
        if FRANCI_TRIGGERED < 1 and temp_region_Franci < 1 then
            -- ���� 
            INT_Franci = 1 + cm:model():turn_number();
            FRANCI_TRIGGERED = FRANCI_TRIGGERED + 1;
        end
        if SAXI_TRIGGERED < 1 and temp_region_Saxi < 1 then
            -- ���� 
            INT_Saxi = 1 + cm:model():turn_number();
            SAXI_TRIGGERED = SAXI_TRIGGERED + 1;
        end
        if EBDANI_TRIGGERED < 1 and temp_region_Ebdani < 1 then
            -- ���� 
            INT_Ebdani = 1 + cm:model():turn_number();
            EBDANI_TRIGGERED = EBDANI_TRIGGERED + 1;
        end
        if VOTADINI_TRIGGERED < 1 and temp_region_Votadini < 1 then
            -- ���� 
            INT_Votadini = 1 + cm:model():turn_number();
            VOTADINI_TRIGGERED = VOTADINI_TRIGGERED + 1;
        end

        if temp_region_Alani >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(ALANI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Alani();
            end
        end
        if temp_region_Ostgoti >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(OSTGOTHS_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Ostgoti();
            end
        end
        if temp_region_Vestgoti >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(VESTGOTHS_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Vestgoti();
            end
        end
        if temp_region_Vandalani >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(VANDALI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Vandali();
            end
        end
        if temp_region_Svebi >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(SVEBI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Svebi();
            end
        end
        if temp_region_Roxolani >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(ROXOLANI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Roxolani();
            end
        end
        if temp_region_Kvadi >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(KVADI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Kvadi();
            end
        end
        if temp_region_Gepidi >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(GEPIDS_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Gepidi();
            end
        end
        if temp_region_Burgundi >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(BURGUNDI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Burgundi();
            end
        end
        if temp_region_Alamanni >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(ALEMANNI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Alamanni();
            end
        end
        if temp_region_Langobardi >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(LANGOBARDI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Langobardi();
            end
        end
        if temp_region_Franci >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(FRANCI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Franci();
            end
        end
        if temp_region_Saxi >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(SAXI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Saxi();
            end
        end
        if temp_region_Ebdani >= 1 then
            -- ���� 
            if (cm:model():world():faction_by_key(EBDANI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Ebdani();
            end
        end
    end
end

---------------------------------------------------------------
-- �������� � ���. �������� ������������
---------------------------------------------------------------

function Inflation(context)
    local faction = context:faction();

    if faction:is_human() and context:faction():treasury() > 99999 then -- 99999 
        if context:faction():name() == OSTGOTHS_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", OSTGOTHS_KEY, -1);
        elseif context:faction():name() == VESTGOTHS_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", VESTGOTHS_KEY, -1);
        elseif context:faction():name() == EXPEDITION_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", EXPEDITION_KEY, -1);
        elseif context:faction():name() == EMPIRE_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", EMPIRE_KEY, -1);
        elseif context:faction():name() == INSURGENT_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", INSURGENT_KEY, -1);
        elseif context:faction():name() == ALANI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", ALANI_KEY, -1);
        elseif context:faction():name() == ALEMANNI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", ALEMANNI_KEY, -1);
        elseif context:faction():name() == ARMENIA_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", ARMENIA_KEY, -1);
        elseif context:faction():name() == AXUM_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", AXUM_KEY, -1);
        elseif context:faction():name() == BURGUNDI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", BURGUNDI_KEY, -1);
        elseif context:faction():name() == EBDANI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", EBDANI_KEY, -1);
        elseif context:faction():name() == FRANCI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", FRANCI_KEY, -1);
        elseif context:faction():name() == GARAMANTI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", GARAMANTI_KEY, -1);
        elseif context:faction():name() == GETI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", GETI_KEY, -1);
        elseif context:faction():name() == HIMYAR_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", HIMYAR_KEY, -1);
        elseif context:faction():name() == YUTI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", YUTI_KEY, -1);
        elseif context:faction():name() == LANGOBARDI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", LANGOBARDI_KEY, -1);
        elseif context:faction():name() == LAKHMIDI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", LAKHMIDI_KEY, -1);
        elseif context:faction():name() == PICTI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", PICTI_KEY, -1);
        elseif context:faction():name() == SARACINI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", SARACINI_KEY, -1);
        elseif context:faction():name() == SASSANID_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", SASSANID_KEY, -1);
        elseif context:faction():name() == SAXI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", SAXI_KEY, -1);
        elseif context:faction():name() == SVEBI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", SVEBI_KEY, -1);
        elseif context:faction():name() == VANDALI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", VANDALI_KEY, -1);
        elseif context:faction():name() == VOTADINI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", VOTADINI_KEY, -1);
        elseif context:faction():name() == HUNS_STAP_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", HUNS_STAP_KEY, -1);
        elseif context:faction():name() == ROXOLANI_KEY then
            cm:apply_effect_bundle("rex_bundle_inflation", ROXOLANI_KEY, -1);
        end

    elseif faction:is_human() and context:faction():treasury() < 100000 then -- 100000 
        if context:faction():name() == OSTGOTHS_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", OSTGOTHS_KEY);
        elseif context:faction():name() == VESTGOTHS_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", VESTGOTHS_KEY);
        elseif context:faction():name() == EXPEDITION_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", EXPEDITION_KEY);
        elseif context:faction():name() == EMPIRE_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", EMPIRE_KEY);
        elseif context:faction():name() == INSURGENT_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", INSURGENT_KEY);
        elseif context:faction():name() == ALANI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", ALANI_KEY);
        elseif context:faction():name() == ALEMANNI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", ALEMANNI_KEY);
        elseif context:faction():name() == ARMENIA_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", ARMENIA_KEY);
        elseif context:faction():name() == AXUM_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", AXUM_KEY);
        elseif context:faction():name() == BURGUNDI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", BURGUNDI_KEY);
        elseif context:faction():name() == EBDANI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", EBDANI_KEY);
        elseif context:faction():name() == FRANCI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", FRANCI_KEY);
        elseif context:faction():name() == GARAMANTI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", GARAMANTI_KEY);
        elseif context:faction():name() == GETI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", GETI_KEY);
        elseif context:faction():name() == HIMYAR_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", HIMYAR_KEY);
        elseif context:faction():name() == YUTI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", YUTI_KEY);
        elseif context:faction():name() == LANGOBARDI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", LANGOBARDI_KEY);
        elseif context:faction():name() == LAKHMIDI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", LAKHMIDI_KEY);
        elseif context:faction():name() == PICTI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", PICTI_KEY);
        elseif context:faction():name() == SARACINI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", SARACINI_KEY);
        elseif context:faction():name() == SASSANID_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", SASSANID_KEY);
        elseif context:faction():name() == SAXI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", SAXI_KEY);
        elseif context:faction():name() == SVEBI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", SVEBI_KEY);
        elseif context:faction():name() == VANDALI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", VANDALI_KEY);
        elseif context:faction():name() == VOTADINI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", VOTADINI_KEY);
        elseif context:faction():name() == HUNS_STAP_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", HUNS_STAP_KEY);
        elseif context:faction():name() == ROXOLANI_KEY then
            cm:remove_effect_bundle("rex_bundle_inflation", ROXOLANI_KEY);
        end
    end
end

-------------------------------------------------------------------
-- ������� ������
-------------------------------------------------------------------

function TRIGGERED_Exodus(context)

    local faction = context:faction();
    local turn_number = cm:model():turn_number();

    if ALANI_TRIGGERED >= 1 and ALANI_TRIGGERED < 3 and turn_number == INT_Alani then

        if (cm:model():world():faction_by_key(ALANI_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Alani();
        end
    end
    if OSTGOTI_TRIGGERED >= 1 and OSTGOTI_TRIGGERED < 3 and turn_number ==
        INT_Ostgoti then

        if (cm:model():world():faction_by_key(OSTGOTHS_KEY)
            :military_force_list():num_items() <= 5) then -- ���� 
            Spawn_Ostgoti();
        end
    end
    if VESTGOTI_TRIGGERED >= 1 and VESTGOTI_TRIGGERED < 3 and turn_number ==
        INT_Vestgoti then

        if (cm:model():world():faction_by_key(VESTGOTHS_KEY)
            :military_force_list():num_items() <= 5) then -- ���� 
            Spawn_Vestgoti();
        end
    end
    if VANDALANI_TRIGGERED >= 1 and VANDALANI_TRIGGERED < 3 and turn_number ==
        INT_Vandali then

        if (cm:model():world():faction_by_key(VANDALI_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Vandali();
        end
    end
    if SVEBI_TRIGGERED >= 1 and SVEBI_TRIGGERED < 3 and turn_number == INT_Svebi then

        if (cm:model():world():faction_by_key(SVEBI_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Svebi();
        end
    end
    if VENEDI_TRIGGERED >= 1 and VENEDI_TRIGGERED < 3 and turn_number ==
        INT_Venedi then

        if (cm:model():world():faction_by_key(RUGII_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Venedi();
        end
    end
    if ROXOLANI_TRIGGERED >= 1 and ROXOLANI_TRIGGERED < 3 and turn_number ==
        INT_Roxolani then

        if (cm:model():world():faction_by_key(ROXOLANI_KEY)
            :military_force_list():num_items() <= 5) then -- ���� 
            Spawn_Roxolani();
        end
    end
    if KVADI_TRIGGERED >= 1 and KVADI_TRIGGERED < 3 and turn_number == INT_Kvadi then

        if (cm:model():world():faction_by_key(KVADI_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Kvadi();
        end
    end
    if GEPIDI_TRIGGERED >= 1 and GEPIDI_TRIGGERED < 3 and turn_number ==
        INT_Gepidi then

        if (cm:model():world():faction_by_key(GEPIDS_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Gepidi();
        end
    end
    if BURGUNDI_TRIGGERED >= 1 and BURGUNDI_TRIGGERED < 3 and turn_number ==
        INT_Burgundi then

        if (cm:model():world():faction_by_key(BURGUNDI_KEY)
            :military_force_list():num_items() <= 5) then -- ���� 
            Spawn_Burgundi();
        end
    end
    if ALEMANNI_TRIGGERED >= 1 and ALEMANNI_TRIGGERED < 3 and turn_number ==
        INT_Alamanni then

        if (cm:model():world():faction_by_key(ALEMANNI_KEY)
            :military_force_list():num_items() <= 5) then -- ���� 
            Spawn_Alamanni();
        end
    end
    if LANGOBARDI_TRIGGERED >= 1 and LANGOBARDI_TRIGGERED < 3 and turn_number ==
        INT_Langobardi then

        if (cm:model():world():faction_by_key(LANGOBARDI_KEY)
            :military_force_list():num_items() <= 5) then -- ���� 
            Spawn_Langobardi();
        end
    end
    if FRANCI_TRIGGERED >= 1 and FRANCI_TRIGGERED < 3 and turn_number ==
        INT_Franci then

        if (cm:model():world():faction_by_key(FRANCI_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Franci();
        end
    end
    if SAXI_TRIGGERED >= 1 and SAXI_TRIGGERED < 3 and turn_number == INT_Saxi then

        if (cm:model():world():faction_by_key(SAXI_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Saxi();
        end
    end
    if EBDANI_TRIGGERED >= 1 and EBDANI_TRIGGERED < 3 and turn_number ==
        INT_Ebdani then

        if (cm:model():world():faction_by_key(EBDANI_KEY):military_force_list()
            :num_items() <= 5) then -- ���� 
            Spawn_Ebdani();
        end
    end
end

-------------------------------------------------------------------
-- ����������� �������
-------------------------------------------------------------------

function Vosstanie_Greithungov(context)
    local turn_number = cm:model():turn_number();
    local temp_region1 = cm:model():world():faction_by_key(GREITUNGI_KEY)
                             :region_list():num_items();
    local temp_region2 = cm:model():world():faction_by_key(OSTGOTHS_KEY)
                             :region_list():num_items();
    local temp_armi_Greit = cm:model():world():faction_by_key(GREITUNGI_KEY)
                                :military_force_list():num_items();

    if temp_region1 < 1 and temp_region2 < 1 and temp_armi_Greit == 1 then

        Spawn_Greithungi();
    end
end

function Vosstanie_Alanov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Alanov = cm:model():world():faction_by_key(ALANI_KEY)
                                 :military_force_list():num_items();

    if temp_armi_Alanov <= 3 and turn_number >= INT_Alani + 6 and
        cm:model():world():faction_exists(ALANI_KEY) == true then

        Spawn_Alani2();
    end
end

function Vosstanie_Ostgotov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Ostgotov = cm:model():world():faction_by_key(OSTGOTHS_KEY)
                                   :military_force_list():num_items();

    if temp_armi_Ostgotov <= 3 and turn_number >= INT_Ostgoti + 6 and
        cm:model():world():faction_exists(OSTGOTHS_KEY) == true then

        Spawn_Ostgoti();
    end
end

function Vosstanie_Vestgotov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Vestgotov = cm:model():world():faction_by_key(VESTGOTHS_KEY)
                                    :military_force_list():num_items();

    if temp_armi_Vestgotov <= 3 and turn_number >= INT_Vestgoti + 6 and
        cm:model():world():faction_exists(VESTGOTHS_KEY) == true then

        Spawn_Vestgoti();
    end
end

function Vosstanie_Vandalov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Vandalov = cm:model():world():faction_by_key(VANDALI_KEY)
                                   :military_force_list():num_items();

    if temp_armi_Vandalov <= 3 and turn_number >= INT_Vandali + 6 and
        cm:model():world():faction_exists(VANDALI_KEY) == true then

        Spawn_Vandali();
    end
end

function Vosstanie_Svebov(context)
    local turn_number = cm:model():turn_number();
    local temp_region_Svebi = cm:model():world():faction_by_key(SVEBI_KEY)
                                  :military_force_list():num_items();

    if temp_region_Svebi <= 3 and turn_number >= INT_Svebi + 6 and
        cm:model():world():faction_exists(SVEBI_KEY) == true then

        Spawn_Svebi();
    end
end

function Vosstanie_Venedov(context)
    local turn_number = cm:model():turn_number();
    local temp_region_Venedi = cm:model():world():faction_by_key(RUGII_KEY)
                                   :military_force_list():num_items();

    if temp_region_Venedi <= 3 and turn_number >= INT_Venedi + 6 and
        cm:model():world():faction_exists(RUGII_KEY) == true then

        Spawn_Venedi();
    end
end

function Vosstanie_Roxolanov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Rox = cm:model():world():faction_by_key(ROXOLANI_KEY)
                              :military_force_list():num_items();

    if temp_armi_Rox <= 3 and turn_number >= INT_Roxolani + 6 and
        cm:model():world():faction_exists(ROXOLANI_KEY) == true then

        Spawn_Roxolani();
    end
end

function Vosstanie_Gepidov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Gepidov = cm:model():world():faction_by_key(GEPIDS_KEY)
                                  :military_force_list():num_items();

    if temp_armi_Gepidov <= 3 and turn_number >= INT_Gepidi + 6 and
        cm:model():world():faction_exists(GEPIDS_KEY) == true then

        Spawn_Gepidi();
    end
end

function Vosstanie_Burgundov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Burg = cm:model():world():faction_by_key(BURGUNDI_KEY)
                               :military_force_list():num_items();

    if temp_armi_Burg <= 3 and turn_number >= INT_Burgundi + 6 and
        cm:model():world():faction_exists(BURGUNDI_KEY) == true then

        Spawn_Burgundi();
    end
end

function Vosstanie_Alemannov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Aleman = cm:model():world():faction_by_key(ALEMANNI_KEY)
                                 :military_force_list():num_items();

    if temp_armi_Aleman <= 3 and turn_number >= INT_Alamanni + 6 and
        cm:model():world():faction_exists(ALEMANNI_KEY) == true then

        Spawn_Alamanni();
    end
end

function Vosstanie_Langobardov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Lango = cm:model():world():faction_by_key(LANGOBARDI_KEY)
                                :military_force_list():num_items();

    if temp_armi_Lango <= 3 and turn_number >= INT_Langobardi + 6 and
        cm:model():world():faction_exists(LANGOBARDI_KEY) == true then

        Spawn_Langobardi();
    end
end

function Vosstanie_Frankov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Frank = cm:model():world():faction_by_key(FRANCI_KEY)
                                :military_force_list():num_items();

    if temp_armi_Frank <= 3 and turn_number >= INT_Franci + 6 and
        cm:model():world():faction_exists(FRANCI_KEY) == true then

        Spawn_Franci();
    end
end

function Vosstanie_Saxov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Sax = cm:model():world():faction_by_key(SAXI_KEY)
                              :military_force_list():num_items();

    if temp_armi_Sax <= 3 and turn_number >= INT_Saxi + 6 and
        cm:model():world():faction_exists(SAXI_KEY) == true then

        Spawn_Saxi();
    end
end

function Vosstanie_Skotov(context)
    local turn_number = cm:model():turn_number();
    local temp_armi_Skotov = cm:model():world():faction_by_key(EBDANI_KEY)
                                 :military_force_list():num_items();

    if temp_armi_Skotov <= 3 and turn_number >= INT_Ebdani + 6 and
        cm:model():world():faction_exists(EBDANI_KEY) == true then

        Spawn_Ebdani();
    end
end

-------------------------------------------------------------------
-- ������� � ���������
-------------------------------------------------------------------

function Dogovor_Federati(context)
    if context:faction():name() == VESTGOTHS_KEY then
        local turn_number = cm:model():turn_number();

        if turn_number >= 1 and FEDERATS_TRIGGERED == false then -- ���� 
            local ER_Empire = cm:model():world():faction_by_key(EMPIRE_KEY); -- 

            if context:faction():at_war_with(ER_Empire) == false then -- ���� ��� �� �����	
                FEDERATS_TRIGGERED = true;
                if context:faction():is_human() == true then
                    cm:apply_effect_bundle("rex_bundle_treaty_federates",
                                           VESTGOTHS_KEY, 24);
                    message_treaty_federates(context);
                end
            end
            if context:faction():at_war_with(ER_Empire) == true then -- ���� ��� �����	
                cm:remove_effect_bundle("rex_bundle_treaty_federates",
                                        VESTGOTHS_KEY);
            end
        end
        if FEDERATS_TRIGGERED == true then -- ���� 
            local ER_Empire = cm:model():world():faction_by_key(EMPIRE_KEY);

            if context:faction():at_war_with(ER_Empire) == true then -- 	
                cm:remove_effect_bundle("rex_bundle_treaty_federates",
                                        VESTGOTHS_KEY);
                cm:remove_effect_bundle("rex_bundle_treaty_federates_ERE",
                                        EMPIRE_KEY);
                FEDERATS_TRIGGERED = false;
            end
        end
    end

    if context:faction():name() == EMPIRE_KEY then

        if FEDERATS_PACT == false then -- ���� 
            local VESTGOTHS = cm:model():world():faction_by_key(VESTGOTHS_KEY);

            if context:faction():at_war_with(VESTGOTHS) == false then -- ���� ��� �� �����	
                FEDERATS_PACT = true;
                if context:faction():is_human() == true then
                    cm:apply_effect_bundle("rex_bundle_treaty_federates_ERE",
                                           EMPIRE_KEY, 24);
                    message_treaty_federates2(context);
                    cm:remove_event_restricted_unit_record(
                        "rex_goth_band_militon_tervingi_F");
                    cm:remove_event_restricted_unit_record(
                        "rex_goth_band_aihvamanne_greutungi_F");
                    cm:remove_event_restricted_unit_record(
                        "rex_goth_band_gadrauhteis_tervingi_F");
                    cm:remove_event_restricted_unit_record(
                        "rex_goth_band_gadrauhteis_greutungi_F");
                end
            end
            if context:faction():at_war_with(VESTGOTHS) == true then -- ���� ��� �����	
                cm:remove_effect_bundle("rex_bundle_treaty_federates_ERE",
                                        EMPIRE_KEY);
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_militon_tervingi_F");
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_aihvamanne_greutungi_F");
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_gadrauhteis_tervingi_F");
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_gadrauhteis_greutungi_F");
            end
        end
        if FEDERATS_PACT == true then -- ���� 
            local VESTGOTHS = cm:model():world():faction_by_key(VESTGOTHS_KEY);

            if context:faction():at_war_with(VESTGOTHS) == true then -- 	
                cm:remove_effect_bundle("rex_bundle_treaty_federates",
                                        VESTGOTHS_KEY);
                cm:remove_effect_bundle("rex_bundle_treaty_federates_ERE",
                                        EMPIRE_KEY);
                FEDERATS_PACT = false;
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_militon_tervingi_F");
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_aihvamanne_greutungi_F");
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_gadrauhteis_tervingi_F");
                cm:add_event_restricted_unit_record(
                    "rex_goth_band_gadrauhteis_greutungi_F");
            end
        end
    end
end

function message_treaty_federates(context)
    local faction = context:faction():name();
    if faction == VESTGOTHS_KEY then
        cm:show_message_event(faction,
                              "effect_bundles_localised_title_rex_bundle_treaty_federates",
                              "effect_bundles_localised_title_rex_bundle_treaty_federates2",
                              "effect_bundles_localised_description_rex_bundle_treaty_federates",
                              true, 207);
    end
end

function message_treaty_federates2(context)
    local faction = context:faction():name();
    if faction == EMPIRE_KEY then
        cm:trigger_incident(EMPIRE_KEY, "rex_treaty_federates");
        -- cm:show_message_event(
        -- 	faction,
        -- 	"effect_bundles_localised_title_rex_bundle_treaty_federates",
        -- 	"effect_bundles_localised_title_rex_bundle_treaty_federates2",
        -- 	"effect_bundles_localised_description_rex_bundle_treaty_federates",
        -- 	true,
        -- 	208 
        -- );
    end
end

----------------------------------------------------------------
-- ��������������� ���������
-------------------------------------------------------------------

function Obbyavit_dip_otn_ne_igrok()
    cm:force_declare_war("heruli", "att_fact_ostrogothi"); -- 
    local faction = cm:model():world():faction_by_key(EXPEDITION_KEY);
    local faction2 = cm:model():world():faction_by_key(FRANCI_KEY);
    if not faction:is_human() and not faction2:is_human() then
        cm:force_make_vassal("att_fact_western_roman_empire", "att_fact_franci");
    end

end

function Obbyavit_dip_otn_ne_igrok2()
    local faction3 = cm:model():world():faction_by_key(EMPIRE_KEY);
    if not faction3:is_human() then
        cm:force_make_peace("att_fact_eastern_roman_empire",
                            "att_fact_tanukhids");
    end

end

function Obbyavit_dip_otn_ne_igrok3()
    local faction4 = cm:model():world():faction_by_key(TANUKHIDS_KEY);
    if not faction4:is_human() then
        cm:force_declare_war("att_fact_tanukhids",
                             "att_fact_eastern_roman_empire");
    end

end

function Obbyavit_Voinu()
    cm:force_declare_war("att_fact_white_huns", "att_fact_ostrogothi"); -- 
    cm:force_declare_war("att_fact_white_huns", "att_fact_visigothi"); -- 

end

function Obbyavit_Voinu1()
    cm:force_declare_war("att_fact_budini", "att_fact_ostrogothi"); -- 
    cm:force_declare_war("att_fact_budini", "att_fact_visigothi"); -- 

end

function Obbyavit_Voinu2()
    cm:force_declare_war("att_fact_separatist_white_huns",
                         "att_fact_sassanid_empire");

end

function Obbyavit_Voinu_Rimu()
    cm:force_declare_war("att_fact_budini", "att_fact_western_roman_empire");

end

function Obbyavit_Voinu_WRE()
    cm:force_declare_war("att_fact_hunni", "att_fact_western_roman_empire");

end

function Obbyavit_Mir()
    cm:force_make_peace("att_fact_eastern_roman_empire", "att_fact_ostrogothi");
    cm:force_make_peace("att_fact_eastern_roman_empire", "att_fact_visigothi");

end

function Obbyavit_Vassal()
    cm:force_make_vassal("att_fact_white_huns", "att_fact_gepidae");
    cm:force_make_vassal("att_fact_white_huns", "aorsi");
    cm:force_make_vassal("att_fact_white_huns", "att_fact_venedi");
    cm:force_make_vassal("att_fact_white_huns", "iazyges");
    cm:force_make_peace("roxolani", "heruli");

end

function Obbyavit_Vassal1()
    if cm:model():world():faction_exists(HUNS_STAP_KEY) == true then

        cm:force_make_vassal("att_fact_white_huns", "iazyges");
    end

end

-------------------------------------------------------------------
-- ����� ������ � �����-�����
-------------------------------------------------------------------

-- ����� �����
function Elders_Hunn_Spawn()
    ELDERS_HUNS_TRIGGERED = true;
    Obbyavit_Voinu();
    Obbyavit_Vassal();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(HUNS_STAP_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_STAP_KEY, -1);
    end);

end

-- ����� �����2
function Elders_Hunn_Spawn2()
    ELDERS_HUNS_TRIGGERED2 = true;
    Obbyavit_Voinu();
    Obbyavit_Vassal();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(HUNS_STAP_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_STAP_KEY, -1);
    end);

end

--------------------------------------------------

-- ����� ��������
function Hunn_Spawn1()
    HUNS_TRIGGERED1 = true;
    local spawn_pos = FindSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 6, false);

    cm:create_force(ROBBERS_HUNN_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ROBBERS_HUNN_KEY, -1);

    end);

end

-- ����� ��������
function Hunn_Spawn()
    HUNS_TRIGGERED = true;
    local spawn_pos = FindSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(ROBBERS_HUNN_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

-- ����� ��������2
function Hunn_Spawn2()
    HUNS_TRIGGERED2 = true;
    Obbyavit_Voinu2();
    local spawn_pos = FindSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(ROBBERS_HUNN_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

-- ����� ������ 
function Hunn_Sred_Spawn()
    HUNS_SRED_TRIGGERED = true;
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn2", 33, false);

    cm:create_force(HUNS_SRED_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn2,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_SRED_KEY, -1);
    end);

end

-- ����� ������� ������
function Hunn_Mlad_Spawn()
    HUNS_MLAD_TRIGGERED = true
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 33, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_MLAD_KEY, -1);
    end);

end

-- ����� ������ 2
function Hunn_Sred_Spawn2()
    HUNS_SRED_TRIGGERED2 = true;
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn2", 19, false);

    cm:create_force(HUNS_SRED_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn2,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

-- ����� ������� ������ 2
function Hunn_Mlad_Spawn2()
    HUNS_MLAD_TRIGGERED2 = true;
    Obbyavit_Voinu1();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 19, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

-- ����� ������ 3
function Hunn_Sred_Spawn3()
    HUNS_SRED_TRIGGERED3 = true;
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn2", 19, false);

    cm:create_force(HUNS_SRED_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn2,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

-- ����� ������� ������ 3
function Hunn_Mlad_Spawn3()
    HUNS_MLAD_TRIGGERED3 = true;
    Obbyavit_Vassal1();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 19, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

-- ����� ������� ������ � ������
function Hunn_Mlad_Spawn4()
    HUNS_MLAD_TRIGGERED4 = HUNS_MLAD_TRIGGERED4 + 1;
    Obbyavit_Voinu_Rimu();
    local spawn_pos = FindSpawnEuro();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 19, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

-- ����� ��������
function Bagaud_Spawn()
    BAGAUDAE_TRIGGERED = true;
    Obbyavit_Voinu_WRE();
    local spawn_pos = FindSpawnBagaud();
    local unit_list = ram.GetRandomForce("voiska_Bagauds", 19, false);

    cm:create_force(BAGAUDAE_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Bagauds,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", BAGAUDAE_KEY, -1);
    end);

end

-- ����� ������� ����������
function Spawn_Greithungi()
    GREITUNGI_TRIGGERED = true;
    local spawn_pos = FindGreithungiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Greithung", 19, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Greithung,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_make_vassal("att_fact_white_huns", "att_fact_greuthingi"); -- 

end

-- ����� ���������
function Spawn_Roman()
    ROMAN_TRIGGERED = true;
    local spawn_pos = FindRomanSpawn();
    local unit_list = ram.GetRandomForce("voiska_Roman", 19, false);

    cm:create_force(INSURGENT_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Roman,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("roman", "att_fact_western_roman_empire"); -- 

end

-- ����� ���������2
function Spawn_Roman2()
    ROMAN_TRIGGERED2 = true;
    local spawn_pos = FindSpawnBagaud();
    local unit_list = ram.GetRandomForce("voiska_Roman", 19, false);

    cm:create_force(INSURGENT_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Roman,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("roman", "att_fact_western_roman_empire"); -- 

end

-- ����� ������������ �������� �����
function Spawn_RomaMavritania()
    MAVRITANIA_TRIGGERED = true;
    local spawn_pos = FindRomaMavritaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_RomaMavritania", 17, false);

    cm:create_force(REBEL_MAVRITANIA_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_RomaMavritania,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� �������� � ������ � �������� � �����
function Spawn_Sarmatov_Kvadov()
    Sarmatov_Kvadov_TRIGGERED = true;
    local spawn_pos = FindSarmatov_KvadovSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 17, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������� � ����� � ��������
function Spawn_Isavri()
    ISAVRI_TRIGGERED = true;
    local spawn_pos = FindIsavriSpawn();
    local unit_list = ram.GetRandomForce("voiska_Isavri", 15, false);

    cm:create_force(ISAVRI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Isavri,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������� ���������� ����� �����
function Spawn_Greithungi2()
    GREITUNGI_TRIGGERED2 = true;
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Greithung", 19, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Greithung,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("att_fact_greuthingi", "att_fact_eastern_roman_empire"); -- 

end

-- ����� ������������ ��������
function Spawn_Antiohia()
    ANTIOHIA_TRIGGERED = true;
    local spawn_pos = FindAntiohiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Antiohia", 16, false);

    cm:create_force(ANTIOHIA_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Antiohia,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("att_fact_oriens", "att_fact_eastern_roman_empire"); -- 

end

-- ����� ���������� �� ����� � ���������
function Spawn_Macedonia()
    MACEDONIA_TRIGGERED = true;
    local spawn_pos = FindMacedoniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 16, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-------------------------------------------------------------------
-- ����� ����
-------------------------------------------------------------------

-- ����� ����
function Spawn_Vse_Vozrozdenie()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn0();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ALANI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie2()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn02();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(OSTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", OSTGOTHS_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie3()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn03();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", VESTGOTHS_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie4()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn04();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VANDALI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", VANDALI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie5()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn05();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SVEBI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", SVEBI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie6()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn06();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ROXOLANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ROXOLANI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie7()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn07();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", KVADI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie8()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn08();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(GEPIDS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", GEPIDS_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie9()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn09();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(BURGUNDI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", BURGUNDI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie10()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn010();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALEMANNI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ALEMANNI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie11()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn011();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(LANGOBARDI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", LANGOBARDI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie12()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn012();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(FRANCI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", FRANCI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
    end);

    --[[ 
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
	������� ��������� � ��������������� �����
	��������� ���������� �����������, �� ���� ������� ���������� ����, �� �����
-----------------------------------------------------------------------------------
	cm:spawn_character_into_family_tree(
		FRANCI_KEY,					-- Faction Key
		"",				-- Forename Key
		"",								-- Family Name Key
		"",								-- Clan Name Key
		"", 							-- Other Name Key
		18, 							-- Age
		true, 							-- Is Male?
		"", 							-- Father Lookup
		"", 							-- Mother Lookup
		true, 							-- Is Immortal?
		"", 	-- Art Set ID
		false, 							-- Make Heir?
		false							-- Is Attila?
	);
-----------------------------------------------------------------------------------
--]]

end

-- ����� ����
function Spawn_Vse_Vozrozdenie13()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn013();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SAXI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", SAXI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie14()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn014();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(EBDANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", EBDANI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie15()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn015();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(RUGII_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        -- cm:apply_effect_bundle_to_characters_force("bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", RUGII_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-- ����� ����
function Spawn_Vse_Vozrozdenie16()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn016();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", GREITUNGI_KEY, -1);
        -- cm:model():loyalty("character_cqi:"..cqi, 10);
        -- cm:disable_movement_for_character("character_cqi:"..cqi);
    end);

end

-------------------------------------------------------------------
-- ����� �������
-------------------------------------------------------------------

-- ����� ������
function Spawn_Alani()
    ALANI_TRIGGERED = ALANI_TRIGGERED + 1;
    local spawn_pos = FindAlaniSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats", 19, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������2
function Spawn_Alani2()
    ALANI_TRIGGERED = ALANI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Sarmats", 19, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ��������
function Spawn_Ostgoti()
    OSTGOTI_TRIGGERED = OSTGOTI_TRIGGERED + 1;
    local spawn_pos = FindOstgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Greithung", 19, false);

    cm:create_force(OSTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Greithung,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���������
function Spawn_Vestgoti()
    VESTGOTI_TRIGGERED = VESTGOTI_TRIGGERED + 1;
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���������2
function Spawn_Vestgoti2()
    VESTGOTI2_TRIGGERED = VESTGOTI2_TRIGGERED + 1;
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ��������
function Spawn_Vandali()
    VANDALANI_TRIGGERED = VANDALANI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(VANDALI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn_Svebi()
    SVEBI_TRIGGERED = SVEBI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Veneds", 19, false);

    cm:create_force(SVEBI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Veneds,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� �������
function Spawn_Venedi()
    VENEDI_TRIGGERED = VENEDI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(RUGII_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ��������
function Spawn_Roxolani()
    ROXOLANI_TRIGGERED = ROXOLANI_TRIGGERED + 1;
    local spawn_pos = FindAntSpawn();
    local unit_list = ram.GetRandomForce("voiska_Ant", 19, false);

    cm:create_force(ROXOLANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn_Kvadi()
    KVADI_TRIGGERED = KVADI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� �������
function Spawn_Gepidi()
    GEPIDI_TRIGGERED = GEPIDI_TRIGGERED + 1;
    local spawn_pos = FindGepidiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(GEPIDS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���������
function Spawn_Burgundi()
    BURGUNDI_TRIGGERED = BURGUNDI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(BURGUNDI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���������
function Spawn_Alamanni()
    ALEMANNI_TRIGGERED = ALEMANNI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(ALEMANNI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ����������
function Spawn_Langobardi()
    LANGOBARDI_TRIGGERED = LANGOBARDI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(LANGOBARDI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn_Franci()
    FRANCI_TRIGGERED = FRANCI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(FRANCI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn_Saxi()
    SAXI_TRIGGERED = SAXI_TRIGGERED + 1;
    local spawn_pos = FindFrisiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(SAXI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn_Ebdani()
    EBDANI_TRIGGERED = EBDANI_TRIGGERED + 1;
    local spawn_pos = FindCaledoniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(EBDANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-------------------------------------------------------------------
-- ����� ������ ��� ������� ��������
-------------------------------------------------------------------

-- ����� ������
function Spawn2_Alani()
    local spawn_pos = FindAlaniSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ��������
function Spawn2_Ostgoti()
    local spawn_pos = FindOstgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(OSTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���������
function Spawn2_Vestgoti()
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ��������
function Spawn2_Vandali()
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VANDALI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn2_Svebi()
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SVEBI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ��������
function Spawn2_Roxolani()
    local spawn_pos = FindAntSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ROXOLANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn2_Kvadi()
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� �������
function Spawn2_Gepidi()
    local spawn_pos = FindGepidiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(GEPIDS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���������
function Spawn2_Burgundi()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(BURGUNDI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���������
function Spawn2_Alamanni()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALEMANNI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ����������
function Spawn2_Langobardi()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(LANGOBARDI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn2_Franci()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(FRANCI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn2_Saxi()
    local spawn_pos = FindFrisiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SAXI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn2_Ebdani()
    local spawn_pos = FindCaledoniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(EBDANI_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ������
function Spawn_Tanukhids()
    SARACINI_SRAWN = SARACINI_SRAWN + 1;
    Obbyavit_dip_otn_ne_igrok3();
    local spawn_pos = FindArabiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Tanukhids", 19, false);

    cm:create_force(TANUKHIDS_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Tanukhids,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���
function Spawn_WRE()
    WRE_TRIGGERED_SRAWN = WRE_TRIGGERED_SRAWN + 1;
    local spawn_pos = FindWRESpawn();
    local unit_list = ram.GetRandomForce("voiska_WRE", 19, false);

    cm:create_force(EXPEDITION_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_WRE,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-- ����� ���
function Spawn_ERE()
    ERE_TRIGGERED_SRAWN = ERE_TRIGGERED_SRAWN + 1;
    local spawn_pos = FindERESpawn();
    local unit_list = ram.GetRandomForce("voiska_WRE", 19, false);

    cm:create_force(EMPIRE_KEY, unit_list, "att_reg_dacia_petrodava", -- ��������� ������
                    spawn_pos.x, spawn_pos.y,
                    "voiska_WRE,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, -- �������� �� ������� � �������
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

-------------------------------------------------------------------
-- ���������� �������
-------------------------------------------------------------------

function FindSpawnEuro()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_euro);

        if IsValidSpawn(army_euro[randomSpawn].x, army_euro[randomSpawn].y, true) then
            pos = army_euro[randomSpawn];
            table.remove(army_euro, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_euro);

        if IsValidSpawn(army_euro[randomSpawn].x, army_euro[randomSpawn].y,
                        false) then
            pos = army_euro[randomSpawn];
            table.remove(army_euro, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_euro[randomSpawn];
    table.remove(army_euro, randomSpawn);
    return pos;
end
-----------------------------------------------------------------------

function FindSpawn0()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero);

        if IsValidSpawn(army_zero[randomSpawn].x, army_zero[randomSpawn].y, true) then
            pos = army_zero[randomSpawn];
            table.remove(army_zero, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero);

        if IsValidSpawn(army_zero[randomSpawn].x, army_zero[randomSpawn].y,
                        false) then
            pos = army_zero[randomSpawn];
            table.remove(army_zero, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero[randomSpawn];
    table.remove(army_zero, randomSpawn);
    return pos;
end

function FindSpawn02()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero2);

        if IsValidSpawn(army_zero2[randomSpawn].x, army_zero2[randomSpawn].y,
                        true) then
            pos = army_zero2[randomSpawn];
            table.remove(army_zero2, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero2);

        if IsValidSpawn(army_zero2[randomSpawn].x, army_zero2[randomSpawn].y,
                        false) then
            pos = army_zero2[randomSpawn];
            table.remove(army_zero2, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero2[randomSpawn];
    table.remove(army_zero2, randomSpawn);
    return pos;
end

function FindSpawn03()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero3);

        if IsValidSpawn(army_zero3[randomSpawn].x, army_zero3[randomSpawn].y,
                        true) then
            pos = army_zero3[randomSpawn];
            table.remove(army_zero3, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero3);

        if IsValidSpawn(army_zero3[randomSpawn].x, army_zero3[randomSpawn].y,
                        false) then
            pos = army_zero3[randomSpawn];
            table.remove(army_zero3, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero3[randomSpawn];
    table.remove(army_zero3, randomSpawn);
    return pos;
end

function FindSpawn04()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero4);

        if IsValidSpawn(army_zero4[randomSpawn].x, army_zero4[randomSpawn].y,
                        true) then
            pos = army_zero4[randomSpawn];
            table.remove(army_zero4, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero4);

        if IsValidSpawn(army_zero4[randomSpawn].x, army_zero4[randomSpawn].y,
                        false) then
            pos = army_zero4[randomSpawn];
            table.remove(army_zero4, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero4[randomSpawn];
    table.remove(army_zero4, randomSpawn);
    return pos;
end

function FindSpawn05()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero5);

        if IsValidSpawn(army_zero5[randomSpawn].x, army_zero5[randomSpawn].y,
                        true) then
            pos = army_zero5[randomSpawn];
            table.remove(army_zero5, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero5);

        if IsValidSpawn(army_zero5[randomSpawn].x, army_zero5[randomSpawn].y,
                        false) then
            pos = army_zero5[randomSpawn];
            table.remove(army_zero5, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero5[randomSpawn];
    table.remove(army_zero5, randomSpawn);
    return pos;
end

function FindSpawn06()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero6);

        if IsValidSpawn(army_zero6[randomSpawn].x, army_zero6[randomSpawn].y,
                        true) then
            pos = army_zero6[randomSpawn];
            table.remove(army_zero6, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero6);

        if IsValidSpawn(army_zero6[randomSpawn].x, army_zero6[randomSpawn].y,
                        false) then
            pos = army_zero6[randomSpawn];
            table.remove(army_zero6, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero6[randomSpawn];
    table.remove(army_zero6, randomSpawn);
    return pos;
end

function FindSpawn07()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero7);

        if IsValidSpawn(army_zero7[randomSpawn].x, army_zero7[randomSpawn].y,
                        true) then
            pos = army_zero7[randomSpawn];
            table.remove(army_zero7, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero7);

        if IsValidSpawn(army_zero7[randomSpawn].x, army_zero7[randomSpawn].y,
                        false) then
            pos = army_zero7[randomSpawn];
            table.remove(army_zero7, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero7[randomSpawn];
    table.remove(army_zero7, randomSpawn);
    return pos;
end

function FindSpawn08()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero8);

        if IsValidSpawn(army_zero8[randomSpawn].x, army_zero8[randomSpawn].y,
                        true) then
            pos = army_zero8[randomSpawn];
            table.remove(army_zero8, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero8);

        if IsValidSpawn(army_zero8[randomSpawn].x, army_zero8[randomSpawn].y,
                        false) then
            pos = army_zero8[randomSpawn];
            table.remove(army_zero8, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero8[randomSpawn];
    table.remove(army_zero8, randomSpawn);
    return pos;
end

function FindSpawn09()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero9);

        if IsValidSpawn(army_zero9[randomSpawn].x, army_zero9[randomSpawn].y,
                        true) then
            pos = army_zero9[randomSpawn];
            table.remove(army_zero9, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero9);

        if IsValidSpawn(army_zero9[randomSpawn].x, army_zero9[randomSpawn].y,
                        false) then
            pos = army_zero9[randomSpawn];
            table.remove(army_zero9, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero9[randomSpawn];
    table.remove(army_zero9, randomSpawn);
    return pos;
end

function FindSpawn010()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero10);

        if IsValidSpawn(army_zero10[randomSpawn].x, army_zero10[randomSpawn].y,
                        true) then
            pos = army_zero10[randomSpawn];
            table.remove(army_zero10, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero10);

        if IsValidSpawn(army_zero10[randomSpawn].x, army_zero10[randomSpawn].y,
                        false) then
            pos = army_zero10[randomSpawn];
            table.remove(army_zero10, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero10[randomSpawn];
    table.remove(army_zero10, randomSpawn);
    return pos;
end

function FindSpawn011()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero11);

        if IsValidSpawn(army_zero11[randomSpawn].x, army_zero11[randomSpawn].y,
                        true) then
            pos = army_zero11[randomSpawn];
            table.remove(army_zero11, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero11);

        if IsValidSpawn(army_zero11[randomSpawn].x, army_zero11[randomSpawn].y,
                        false) then
            pos = army_zero11[randomSpawn];
            table.remove(army_zero11, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero11[randomSpawn];
    table.remove(army_zero11, randomSpawn);
    return pos;
end

function FindSpawn012()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero12);

        if IsValidSpawn(army_zero12[randomSpawn].x, army_zero12[randomSpawn].y,
                        true) then
            pos = army_zero12[randomSpawn];
            table.remove(army_zero12, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero12);

        if IsValidSpawn(army_zero12[randomSpawn].x, army_zero12[randomSpawn].y,
                        false) then
            pos = army_zero12[randomSpawn];
            table.remove(army_zero12, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero12[randomSpawn];
    table.remove(army_zero12, randomSpawn);
    return pos;
end

function FindSpawn013()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero13);

        if IsValidSpawn(army_zero13[randomSpawn].x, army_zero13[randomSpawn].y,
                        true) then
            pos = army_zero13[randomSpawn];
            table.remove(army_zero13, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero13);

        if IsValidSpawn(army_zero13[randomSpawn].x, army_zero13[randomSpawn].y,
                        false) then
            pos = army_zero13[randomSpawn];
            table.remove(army_zero13, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero13[randomSpawn];
    table.remove(army_zero13, randomSpawn);
    return pos;
end

function FindSpawn014()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero14);

        if IsValidSpawn(army_zero14[randomSpawn].x, army_zero14[randomSpawn].y,
                        true) then
            pos = army_zero14[randomSpawn];
            table.remove(army_zero14, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero14);

        if IsValidSpawn(army_zero14[randomSpawn].x, army_zero14[randomSpawn].y,
                        false) then
            pos = army_zero14[randomSpawn];
            table.remove(army_zero14, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero14[randomSpawn];
    table.remove(army_zero14, randomSpawn);
    return pos;
end

function FindSpawn015()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero15);

        if IsValidSpawn(army_zero15[randomSpawn].x, army_zero15[randomSpawn].y,
                        true) then
            pos = army_zero15[randomSpawn];
            table.remove(army_zero15, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero15);

        if IsValidSpawn(army_zero15[randomSpawn].x, army_zero15[randomSpawn].y,
                        false) then
            pos = army_zero15[randomSpawn];
            table.remove(army_zero15, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero15[randomSpawn];
    table.remove(army_zero15, randomSpawn);
    return pos;
end

function FindSpawn016()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero16);

        if IsValidSpawn(army_zero16[randomSpawn].x, army_zero16[randomSpawn].y,
                        true) then
            pos = army_zero16[randomSpawn];
            table.remove(army_zero16, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero16);

        if IsValidSpawn(army_zero16[randomSpawn].x, army_zero16[randomSpawn].y,
                        false) then
            pos = army_zero16[randomSpawn];
            table.remove(army_zero16, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_zero16[randomSpawn];
    table.remove(army_zero16, randomSpawn);
    return pos;
end

function FindSpawnBagaud()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_galliya);

        if IsValidSpawn(army_galliya[randomSpawn].x,
                        army_galliya[randomSpawn].y, true) then
            pos = army_galliya[randomSpawn];
            table.remove(army_galliya, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_galliya);

        if IsValidSpawn(army_galliya[randomSpawn].x,
                        army_galliya[randomSpawn].y, false) then
            pos = army_galliya[randomSpawn];
            table.remove(army_galliya, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_galliya[randomSpawn];
    table.remove(army_galliya, randomSpawn);
    return pos;
end

function FindSarmatov_KvadovSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Sarmatov_Kvadov);

        if IsValidSpawn(army_Sarmatov_Kvadov[randomSpawn].x,
                        army_Sarmatov_Kvadov[randomSpawn].y, true) then
            pos = army_Sarmatov_Kvadov[randomSpawn];
            table.remove(army_Sarmatov_Kvadov, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Sarmatov_Kvadov);

        if IsValidSpawn(army_Sarmatov_Kvadov[randomSpawn].x,
                        army_Sarmatov_Kvadov[randomSpawn].y, false) then
            pos = army_Sarmatov_Kvadov[randomSpawn];
            table.remove(army_Sarmatov_Kvadov, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_Sarmatov_Kvadov[randomSpawn];
    table.remove(army_Sarmatov_Kvadov, randomSpawn);
    return pos;
end

function FindIsavriSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Isavri);

        if IsValidSpawn(army_Isavri[randomSpawn].x, army_Isavri[randomSpawn].y,
                        true) then
            pos = army_Isavri[randomSpawn];
            table.remove(army_Isavri, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Isavri);

        if IsValidSpawn(army_Isavri[randomSpawn].x, army_Isavri[randomSpawn].y,
                        false) then
            pos = army_Isavri[randomSpawn];
            table.remove(army_Isavri, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_Isavri[randomSpawn];
    table.remove(army_Isavri, randomSpawn);
    return pos;
end

function FindMacedoniaSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Makedonia);

        if IsValidSpawn(army_Makedonia[randomSpawn].x,
                        army_Makedonia[randomSpawn].y, true) then
            pos = army_Makedonia[randomSpawn];
            table.remove(army_Makedonia, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Makedonia);

        if IsValidSpawn(army_Makedonia[randomSpawn].x,
                        army_Makedonia[randomSpawn].y, false) then
            pos = army_Makedonia[randomSpawn];
            table.remove(army_Makedonia, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_Makedonia[randomSpawn];
    table.remove(army_Makedonia, randomSpawn);
    return pos;
end

function FindAntiohiaSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Antiohia);

        if IsValidSpawn(army_Antiohia[randomSpawn].x,
                        army_Antiohia[randomSpawn].y, true) then
            pos = army_Antiohia[randomSpawn];
            table.remove(army_Antiohia, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Antiohia);

        if IsValidSpawn(army_Antiohia[randomSpawn].x,
                        army_Antiohia[randomSpawn].y, false) then
            pos = army_Antiohia[randomSpawn];
            table.remove(army_Antiohia, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_Antiohia[randomSpawn];
    table.remove(army_Antiohia, randomSpawn);
    return pos;
end

function FindSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_sarmatiya);

        if IsValidSpawn(army_sarmatiya[randomSpawn].x,
                        army_sarmatiya[randomSpawn].y, true) then
            pos = army_sarmatiya[randomSpawn];
            table.remove(army_sarmatiya, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_sarmatiya);

        if IsValidSpawn(army_sarmatiya[randomSpawn].x,
                        army_sarmatiya[randomSpawn].y, false) then
            pos = army_sarmatiya[randomSpawn];
            table.remove(army_sarmatiya, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_sarmatiya[randomSpawn];
    table.remove(army_sarmatiya, randomSpawn);
    return pos;
end

function FindSpawn2()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_east);

        if IsValidSpawn(army_east[randomSpawn].x, army_east[randomSpawn].y, true) then
            pos = army_east[randomSpawn];
            table.remove(army_east, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_east);

        if IsValidSpawn(army_east[randomSpawn].x, army_east[randomSpawn].y,
                        false) then
            pos = army_east[randomSpawn];
            table.remove(army_east, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_east[randomSpawn];
    table.remove(army_east, randomSpawn);
    return pos;
end

function FindRomanSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_brittania);

        if IsValidSpawn(army_brittania[randomSpawn].x,
                        army_brittania[randomSpawn].y, true) then
            pos = army_brittania[randomSpawn];
            table.remove(army_brittania, randomSpawn); -- 
            return pos; --
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_brittania);

        if IsValidSpawn(army_brittania[randomSpawn].x,
                        army_brittania[randomSpawn].y, false) then
            pos = army_brittania[randomSpawn];
            table.remove(army_brittania, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_brittania[randomSpawn];
    table.remove(army_brittania, randomSpawn);
    return pos;
end

function FindRomaMavritaniaSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_mavritania);

        if IsValidSpawn(army_mavritania[randomSpawn].x,
                        army_mavritania[randomSpawn].y, true) then
            pos = army_mavritania[randomSpawn];
            table.remove(army_mavritania, randomSpawn); -- 
            return pos; --
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_mavritania);

        if IsValidSpawn(army_mavritania[randomSpawn].x,
                        army_mavritania[randomSpawn].y, false) then
            pos = army_mavritania[randomSpawn];
            table.remove(army_mavritania, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_mavritania[randomSpawn];
    table.remove(army_mavritania, randomSpawn);
    return pos;
end

function FindGreithungiSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_chersonessus);

        if IsValidSpawn(army_chersonessus[randomSpawn].x,
                        army_chersonessus[randomSpawn].y, true) then
            pos = army_chersonessus[randomSpawn];
            table.remove(army_chersonessus, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_chersonessus);

        if IsValidSpawn(army_chersonessus[randomSpawn].x,
                        army_chersonessus[randomSpawn].y, false) then
            pos = army_chersonessus[randomSpawn];
            table.remove(army_chersonessus, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_chersonessus[randomSpawn];
    table.remove(army_chersonessus, randomSpawn);
    return pos;
end

function FindAlaniSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_leopolis);

        if IsValidSpawn(army_leopolis[randomSpawn].x,
                        army_leopolis[randomSpawn].y, true) then
            pos = army_leopolis[randomSpawn];
            table.remove(army_leopolis, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_leopolis);

        if IsValidSpawn(army_leopolis[randomSpawn].x,
                        army_leopolis[randomSpawn].y, false) then
            pos = army_leopolis[randomSpawn];
            table.remove(army_leopolis, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_leopolis[randomSpawn];
    table.remove(army_leopolis, randomSpawn);
    return pos;
end

function FindOstgotiSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_petrodava);

        if IsValidSpawn(army_petrodava[randomSpawn].x,
                        army_petrodava[randomSpawn].y, true) then
            pos = army_petrodava[randomSpawn];
            table.remove(army_petrodava, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_petrodava);

        if IsValidSpawn(army_petrodava[randomSpawn].x,
                        army_petrodava[randomSpawn].y, false) then
            pos = army_petrodava[randomSpawn];
            table.remove(army_petrodava, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_petrodava[randomSpawn];
    table.remove(army_petrodava, randomSpawn);
    return pos;
end

function FindVestgotiSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_markianorol);

        if IsValidSpawn(army_markianorol[randomSpawn].x,
                        army_markianorol[randomSpawn].y, true) then
            pos = army_markianorol[randomSpawn];
            table.remove(army_markianorol, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_markianorol);

        if IsValidSpawn(army_markianorol[randomSpawn].x,
                        army_markianorol[randomSpawn].y, false) then
            pos = army_markianorol[randomSpawn];
            table.remove(army_markianorol, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_markianorol[randomSpawn];
    table.remove(army_markianorol, randomSpawn);
    return pos;
end

function FindVandaliSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis);

        if IsValidSpawn(army_budorgis[randomSpawn].x,
                        army_budorgis[randomSpawn].y, true) then
            pos = army_budorgis[randomSpawn];
            table.remove(army_budorgis, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis);

        if IsValidSpawn(army_budorgis[randomSpawn].x,
                        army_budorgis[randomSpawn].y, false) then
            pos = army_budorgis[randomSpawn];
            table.remove(army_budorgis, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_budorgis[randomSpawn];
    table.remove(army_budorgis, randomSpawn);
    return pos;
end

function FindVandaliSpawn2()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis2);

        if IsValidSpawn(army_budorgis2[randomSpawn].x,
                        army_budorgis2[randomSpawn].y, true) then
            pos = army_budorgis2[randomSpawn];
            table.remove(army_budorgis2, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis2);

        if IsValidSpawn(army_budorgis2[randomSpawn].x,
                        army_budorgis2[randomSpawn].y, false) then
            pos = army_budorgis2[randomSpawn];
            table.remove(army_budorgis2, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_budorgis2[randomSpawn];
    table.remove(army_budorgis2, randomSpawn);
    return pos;
end

function FindGepidiSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_apulum);

        if IsValidSpawn(army_apulum[randomSpawn].x, army_apulum[randomSpawn].y,
                        true) then
            pos = army_apulum[randomSpawn];
            table.remove(army_apulum, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_apulum);

        if IsValidSpawn(army_apulum[randomSpawn].x, army_apulum[randomSpawn].y,
                        false) then
            pos = army_apulum[randomSpawn];
            table.remove(army_apulum, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_apulum[randomSpawn];
    table.remove(army_apulum, randomSpawn);
    return pos;
end

function FindGermaniaSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_germania);

        if IsValidSpawn(army_germania[randomSpawn].x,
                        army_germania[randomSpawn].y, true) then
            pos = army_germania[randomSpawn];
            table.remove(army_germania, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_germania);

        if IsValidSpawn(army_germania[randomSpawn].x,
                        army_germania[randomSpawn].y, false) then
            pos = army_germania[randomSpawn];
            table.remove(army_germania, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_germania[randomSpawn];
    table.remove(army_germania, randomSpawn);
    return pos;
end

function FindFrisiaSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_frisia);

        if IsValidSpawn(army_frisia[randomSpawn].x, army_frisia[randomSpawn].y,
                        true) then
            pos = army_frisia[randomSpawn];
            table.remove(army_frisia, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_frisia);

        if IsValidSpawn(army_frisia[randomSpawn].x, army_frisia[randomSpawn].y,
                        false) then
            pos = army_frisia[randomSpawn];
            table.remove(army_frisia, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_frisia[randomSpawn];
    table.remove(army_frisia, randomSpawn);
    return pos;
end

function FindCaledoniaSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_caledonia);

        if IsValidSpawn(army_caledonia[randomSpawn].x,
                        army_caledonia[randomSpawn].y, true) then
            pos = army_caledonia[randomSpawn];
            table.remove(army_caledonia, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_caledonia);

        if IsValidSpawn(army_caledonia[randomSpawn].x,
                        army_caledonia[randomSpawn].y, false) then
            pos = army_caledonia[randomSpawn];
            table.remove(army_caledonia, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_caledonia[randomSpawn];
    table.remove(army_caledonia, randomSpawn);
    return pos;
end

function FindArabiaSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Arabia);

        if IsValidSpawn(army_Arabia[randomSpawn].x, army_Arabia[randomSpawn].y,
                        true) then
            pos = army_Arabia[randomSpawn];
            table.remove(army_Arabia, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Arabia);

        if IsValidSpawn(army_Arabia[randomSpawn].x, army_Arabia[randomSpawn].y,
                        false) then
            pos = army_Arabia[randomSpawn];
            table.remove(army_Arabia, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_Arabia[randomSpawn];
    table.remove(army_Arabia, randomSpawn);
    return pos;
end

function FindWRESpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_WRE);

        if IsValidSpawn(army_WRE[randomSpawn].x, army_WRE[randomSpawn].y, true) then
            pos = army_WRE[randomSpawn];
            table.remove(army_WRE, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_WRE);

        if IsValidSpawn(army_WRE[randomSpawn].x, army_WRE[randomSpawn].y, false) then
            pos = army_WRE[randomSpawn];
            table.remove(army_WRE, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_WRE[randomSpawn];
    table.remove(army_WRE, randomSpawn);
    return pos;
end

function FindERESpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ERE);

        if IsValidSpawn(army_ERE[randomSpawn].x, army_ERE[randomSpawn].y, true) then
            pos = army_ERE[randomSpawn];
            table.remove(army_ERE, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ERE);

        if IsValidSpawn(army_ERE[randomSpawn].x, army_ERE[randomSpawn].y, false) then
            pos = army_ERE[randomSpawn];
            table.remove(army_ERE, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_ERE[randomSpawn];
    table.remove(army_ERE, randomSpawn);
    return pos;
end

function FindAntSpawn()
    local pos = nil;

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ant);

        if IsValidSpawn(army_ant[randomSpawn].x, army_ant[randomSpawn].y, true) then
            pos = army_ant[randomSpawn];
            table.remove(army_ant, randomSpawn); -- 
            return pos; -- 
        end
    end

    -- 
    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ant);

        if IsValidSpawn(army_ant[randomSpawn].x, army_ant[randomSpawn].y, false) then
            pos = army_ant[randomSpawn];
            table.remove(army_ant, randomSpawn);
            return pos;
        end
    end

    -- 
    pos = army_ant[randomSpawn];
    table.remove(army_ant, randomSpawn);
    return pos;
end

-------------------------------------------------------------------
-- ����� � ������
-------------------------------------------------------------------

function SetupZeroArmyTemplates()
    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Zero");
    ram.AddUnit("voiska_Zero", "rex_pict_barb_spearmen_ishoda", 1);

    ram.AddMandatoryUnit("voiska_Zero", "rex_pict_barb_spearmen_ishoda", 1); -- ���� ������ ���� �����������!
end

function SetupBarbarianArmyTemplates()
    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Hunn"); -- 
    ram.AddUnit("voiska_Hunn", "rex_hun_cavalry", 3);
    -- 
    ram.AddUnit("voiska_Hunn", "rex_hun_fast_arrows", 5);

    ram.AddUnit("voiska_Hunn", "rex_hun_bagatur", 2);

    ram.AddMandatoryUnit("voiska_Hunn", "rex_hun_retinue", 1); -- 
    ram.AddMandatoryUnit("voiska_Hunn", "rex_hun_sabirs", 3);
    ram.AddMandatoryUnit("voiska_Hunn", "rex_hun_oathbound", 3);
    ram.AddMandatoryUnit("voiska_Hunn", "rex_hun_glittering_bagatur", 4);
end

function SetupErrorArmyTemplates()
    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Hunn2"); -- 
    ram.AddUnit("voiska_Hunn2", "rex_hun_sarm_cavalry", 3);

    ram.AddUnit("voiska_Hunn2", "rex_hun_cavalry", 2);

    ram.AddUnit("voiska_Hunn2", "rex_hun_tribesmen", 4);

    ram.AddMandatoryUnit("voiska_Hunn2",
                         "rex_hun_shield_bearers_warband_arcaragantes", 4);
    ram.AddMandatoryUnit("voiska_Hunn2", "rex_hun_sarm_comrades", 2);
    ram.AddMandatoryUnit("voiska_Hunn2", "rex_hun_long_arrows_arcaragantes", 4);
    ram.AddMandatoryUnit("voiska_Hunn2", "rex_hun_fast_arrows", 5);
    ram.AddMandatoryUnit("voiska_Hunn2", "rex_hun_oathbound_warband_limicantes",
                         3);

    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Hunn3"); -- 
    ram.AddUnit("voiska_Hunn3", "rex_hun_sarm_cavalry", 2);

    ram.AddUnit("voiska_Hunn3", "rex_hun_sarmatian_horsemen", 3);

    ram.AddUnit("voiska_Hunn3", "rex_hun_arrows_limicantes", 4);

    ram.AddMandatoryUnit("voiska_Hunn3",
                         "rex_hun_shield_bearers_warband_arcaragantes", 6);
    ram.AddMandatoryUnit("voiska_Hunn3", "rex_hun_sarm_comrades", 4);
    ram.AddMandatoryUnit("voiska_Hunn3", "rex_hun_warband_limicantes", 7);
    ram.AddMandatoryUnit("voiska_Hunn3", "rex_hun_long_arrows_arcaragantes", 9);
    ram.AddMandatoryUnit("voiska_Hunn3", "rex_hun_oathbound_warband_limicantes",
                         7);
end

function SetupRomanArmyTemplates()
    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Roman"); -- 
    ram.AddUnit("voiska_Roman", "rex_rom_legionis_britones_seniores", 3);

    ram.AddUnit("voiska_Roman", "att_rom_sagittarii", 2);

    ram.AddUnit("voiska_Roman", "rex_rom_equites_cetrati", 1);
    ram.AddUnit("voiska_Roman", "rex_rom_legionis_britonum", 4);

    ram.AddMandatoryUnit("voiska_Roman", "rex_rom_millites_arm", 1);
    ram.AddMandatoryUnit("voiska_Roman", "rex_rom_millites_ball", 1);
    ram.AddMandatoryUnit("voiska_Roman", "rex_rom_ala_britonum", 2);
    ram.AddMandatoryUnit("voiska_Roman", "rex_rom_sagittarii_gallicani", 2);

    output("#### Adding Army Incident Listeners ####");
    ram.NewForce("voiska_RomaMavritania"); -- 
    ram.AddUnit("voiska_RomaMavritania", "rex_rom_legionis_mauri", 4);

    ram.AddUnit("voiska_RomaMavritania", "rex_rom_equites_mauri", 5);

    ram.AddUnit("voiska_RomaMavritania", "rex_rom_auxiliarii_mauri_seniores", 1);
    ram.AddUnit("voiska_RomaMavritania", "rex_rom_auxiliarii_mauri_iuniores", 3);

    ram.AddMandatoryUnit("voiska_RomaMavritania", "rex_rom_legionis_gaetulorum",
                         1);
    ram.AddMandatoryUnit("voiska_RomaMavritania", "rex_rom_millites_maur", 3);
    ram.AddMandatoryUnit("voiska_RomaMavritania", "att_rom_imperial_dromedarii",
                         2);
    ram.AddMandatoryUnit("voiska_RomaMavritania", "rex_rom_legionis_numidarum",
                         1);

    output("#### Adding Army Incident Listeners ####");
    ram.NewForce("voiska_WRE");
    ram.AddUnit("voiska_WRE", "rex_rom_equites_stablesiani", 3);
    ram.AddUnit("voiska_WRE", "att_rom_cohors", 1);

    ram.AddUnit("voiska_WRE", "rex_rom_legionis_propugnatores_iuniores", 3);
    ram.AddUnit("voiska_WRE", "rex_rom_legionis_lanciarii", 1);

    ram.AddUnit("voiska_WRE", "rex_rom_legionis_mattiarii_iuniores", 2);
    ram.AddUnit("voiska_WRE", "rex_rom_legionis_balistarii", 1);

    ram.AddUnit("voiska_WRE", "rex_rom_equites_scutarii", 2);

    ram.AddUnit("voiska_WRE", "rex_rom_equites_sagittarii_com", 3);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_legionis_lanciarii", 2);
    ram.AddMandatoryUnit("voiska_WRE", "att_rom_numeroi", 2);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_millites_arm", 1);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_cohors_prima", 1);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_cohors_tertia", 1);
    ram.AddMandatoryUnit("voiska_WRE", "att_rom_cohors", 2);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_legionis_mattiarii_iuniores", 1);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_legionis_balistarii", 2);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_equites_scutarii", 1);
    ram.AddMandatoryUnit("voiska_WRE", "rex_rom_equites_stablesiani", 1);
    ram.AddMandatoryUnit("voiska_WRE", "att_rom_equites_promoti", 1);
end

function SetupGreithungiArmyTemplates()
    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Greithung"); -- 
    ram.AddUnit("voiska_Greithung", "rex_goth_band_nutans", 1);

    ram.AddUnit("voiska_Greithung", "rex_goth_band_bugjane", 3);

    ram.AddUnit("voiska_Greithung", "rex_goth_band_gadrauhteis_greutungi", 2);
    ram.AddUnit("voiska_Greithung", "rex_goth_band_aihvamanne_greutungi", 5);

    ram.AddMandatoryUnit("voiska_Greithung", "rex_ost_horsemen_s_ishoda", 4);
    ram.AddMandatoryUnit("voiska_Greithung", "rex_ost_barb_bowmen_ishoda", 3);
    ram.AddMandatoryUnit("voiska_Greithung", "rex_ost_barb_spearmen_ishoda", 3);
    ram.AddMandatoryUnit("voiska_Greithung", "rex_ost_instigator_ishoda", 2);
    ram.AddMandatoryUnit("voiska_Greithung", "rex_ost_skirmisher_ishoda", 3);
end

function SetupMigrationArmyTemplates()
    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Sarmats"); -- 
    ram.AddUnit("voiska_Sarmats", "rex_sarm_sarmatian_horsemen", 3);

    ram.AddUnit("voiska_Sarmats", "rex_sarm_wedge_arcaragantes", 2);

    ram.AddUnit("voiska_Sarmats", "rex_sarm_fast_arrows_arcaragantes", 2);

    ram.AddMandatoryUnit("voiska_Sarmats", "rex_sarm_allan_bal", 1);
    ram.AddMandatoryUnit("voiska_Sarmats", "rex_alan_barb_bowmen_ishoda", 2);
    ram.AddMandatoryUnit("voiska_Sarmats", "rex_alan_horsemen_s_ishoda", 10);
    ram.NewForce("voiska_Sarmats_Germans");
    ram.AddUnit("voiska_Sarmats_Germans", "rex_pict_instigator_ishoda", 1);

    ram.AddUnit("voiska_Sarmats_Germans", "rex_alan_skirmisher_ishoda", 3);

    ram.AddMandatoryUnit("voiska_Sarmats_Germans",
                         "rex_pict_barb_spearmen_ishoda", 5);
    ram.AddMandatoryUnit("voiska_Sarmats_Germans",
                         "rex_pict_barb_bowmen_ishoda", 4);
    ram.AddMandatoryUnit("voiska_Sarmats_Germans", "rex_ost_horsemen_s_ishoda",
                         5);
    ram.NewForce("voiska_Veneds");
    ram.AddUnit("voiska_Veneds", "rex_pict_instigator_ishoda", 1);

    ram.AddUnit("voiska_Veneds", "rex_alan_skirmisher_ishoda", 3);

    ram.AddMandatoryUnit("voiska_Veneds", "rex_pict_horsemen_ishoda", 2);
    ram.AddMandatoryUnit("voiska_Veneds", "rex_pict_barb_spearmen_ishoda", 5);
    ram.AddMandatoryUnit("voiska_Veneds", "rex_pict_barb_bowmen_ishoda", 5);
    ram.NewForce("voiska_Germans");
    ram.AddUnit("voiska_Germans", "rex_pict_instigator_ishoda", 1);

    ram.AddUnit("voiska_Germans", "rex_pict_slinger_ishoda", 3);

    ram.AddMandatoryUnit("voiska_Germans", "rex_pict_barb_spearmen_ishoda", 6);
    ram.AddMandatoryUnit("voiska_Germans", "rex_pict_barb_bowmen_ishoda", 5);
    ram.AddMandatoryUnit("voiska_Germans", "rex_pict_horsemen_ishoda", 3);

    ram.NewForce("voiska_Isavri");
    ram.AddUnit("voiska_Isavri", "rex_east_caucasians", 3);

    ram.AddUnit("voiska_Isavri", "rex_east_arm_anazat", 4);

    ram.AddMandatoryUnit("voiska_Isavri", "rex_east_arm_anazat_bow", 4);
    ram.AddMandatoryUnit("voiska_Isavri", "rex_east_arm_light_ayrudzi", 3);

    ram.NewForce("voiska_Tanukhids");
    ram.AddUnit("voiska_Tanukhids", "rex_arab_arabic_dromedaries", 2);

    ram.AddUnit("voiska_Tanukhids", "rex_arab_badyia_camel", 4);

    ram.AddUnit("voiska_Tanukhids", "rex_arab_badyia_horsemen", 3);

    ram.AddMandatoryUnit("voiska_Tanukhids", "rex_arab_militia", 7);
    ram.AddMandatoryUnit("voiska_Tanukhids", "rex_arab_badyia_ambushers", 3);

    ram.NewForce("voiska_Antiohia");
    ram.AddUnit("voiska_Antiohia", "att_rom_sagittarii", 4);

    ram.AddUnit("voiska_Antiohia", "rex_rom_legionis_defensores", 5);

    ram.AddUnit("voiska_Antiohia", "rex_rom_equites_cetrati", 1);

    ram.AddUnit("voiska_Antiohia", "rex_rom_equites_clibanarii_parthi", 2);

    ram.AddUnit("voiska_Antiohia", "rex_rom_equites_sagittarii_parthi", 4);

    ram.AddMandatoryUnit("voiska_Antiohia", "rex_rom_legionis_euphratensis", 3);
    ram.AddMandatoryUnit("voiska_Antiohia", "rex_rom_legionis_transtigritani", 2);
    ram.AddMandatoryUnit("voiska_Antiohia", "rex_rom_equites_saraceni", 3);
    ram.AddMandatoryUnit("voiska_Antiohia", "rex_rom_cuneus_scutariorum", 1);

    ram.NewForce("voiska_Ant");
    ram.AddUnit("voiska_Ant", "rex_slav_ant_cavalry", 2);

    ram.AddUnit("voiska_Ant", "rex_slav_ant_band_warspear", 4);
    ram.AddUnit("voiska_Ant", "rex_slav_ant_band_warsword", 3);

    ram.AddMandatoryUnit("voiska_Ant", "rex_slav_ant_squad_bow", 4);
    ram.AddMandatoryUnit("voiska_Ant", "rex_slav_ant_squad_levy", 4);
    ram.AddMandatoryUnit("voiska_Ant", "rex_slav_ant_squad_horsemen", 3);

    ram.NewForce("voiska_Bagauds");
    ram.AddUnit("voiska_Bagauds", "rex_robbers_bows", 4);

    ram.AddUnit("voiska_Bagauds", "rex_robb_squad_brigands", 5);
    ram.AddUnit("voiska_Bagauds", "rex_robb_militia", 3);

    ram.AddUnit("voiska_Bagauds", "rex_robb_band_archers", 2);
    ram.AddUnit("voiska_Bagauds", "rex_robbers_brigade", 1);

    ram.AddUnit("voiska_Bagauds", "rex_robb_ala", 1);

    ram.AddMandatoryUnit("voiska_Bagauds", "att_merc_rom_palatina", 1);
    ram.AddMandatoryUnit("voiska_Bagauds", "att_merc_rom_comitatensis_spears", 2);
    ram.AddMandatoryUnit("voiska_Bagauds", "att_merc_rom_legio", 3);
    ram.AddMandatoryUnit("voiska_Bagauds", "att_merc_rom_ballistarii", 2);
end

-------------------------------------------------------------------
-- ���������� � ������

-- ���������, ��������, �������, ����, ��������, ������, ��������, ����� 2
-------------------------------------------------------------------

Immortality_character = {
    {32, "forename:2147344857"}, -- ��������� 375-8
    {56, "forename:2147347535"}, -- �������� 381-14
    {64, "forename:3000000038,surname:0000000000"}, -- ������� 383-16
    {84, "forename:2147337916,surname:2147328253"}, -- ���� 388-21
    {112, "forename:2147343910,surname:2147344054"}, -- �������� 395-28
    {172, "forename:2147343885"}, -- ������ 410-43
    {44, "forename:2147345141"}, -- �������� 378-11
    {52, "forename:3000000001"} -- ����� II 390-13
};

function Immortality_Character_Check(context)
    local turn_number = cm:model():turn_number();
    for i = 1, #Immortality_character do
        if turn_number == Immortality_character[i][1] then
            output("Immortality character: " .. Immortality_character[i][2]);
            cm:set_character_immortality(Immortality_character[i][2], false);
            break
        end
    end
end

-------------------------------------------------------------------
-- �������� ������
-------------------------------------------------------------------

UNIT1 = "att_merc_ger_germanic_pikes";
UNIT1B = "att_merc_ger_germanic_hurlers";
UNIT2 = "att_merc_ger_germanic_hunters";
UNIT3 = "att_merc_ger_germanic_warband";
UNIT4 = "att_merc_ger_germanic_pikes";
UNIT5 = "att_merc_ger_germanic_mounted_brigands";
UNIT5B = "att_merc_ger_germanic_mounted_warband";

UNIT_R1 = "rex_rom_legionis_lanciarii";
UNIT_R2 = "att_rom_comitatensis_spears";
UNIT_R3 = "att_rom_equites_dalmatae";
UNIT_R4 = "rex_rom_millites_arm";
UNIT_R5 = "rex_rom_cohors_prima";
UNIT_R6 = "att_rom_funditores";
UNIT_R7 = "att_rom_equites_promoti";
UNIT_R8 = "att_rom_comitatensis_spears";
UNIT_R9 = "att_rom_cohors";

buildings1 = {
    [1] = "att_bld_barbmigs_city_1",
    [2] = "att_bld_barbmigs_city_2",
    [3] = "att_bld_barbmigs_city_3",
    [4] = "att_bld_barbmigs_city_4"
};

function Check_faction_list(context)
    local faction_list = cm:model():world():faction_list();
    local temp_region_WRE = cm:model():world():faction_by_key(EXPEDITION_KEY)
                                :region_list():num_items();
    local temp_region_ERE = cm:model():world():faction_by_key(EMPIRE_KEY)
                                :region_list():num_items();
    --	local chanc = cm:random_number(100);

    for i = 0, faction_list:num_items() - 1 do
        local cur_faction = faction_list:item_at(i);

        if cur_faction:name() == OSTGOTHS_KEY then
            armies_stance(context);
            return;
        end
        if cur_faction:name() == VESTGOTHS_KEY then
            armies_stance(context);
            return;
        end
        if cur_faction:name() == GEPIDS_KEY then
            armies_stance(context);
            return;
        end
        if cur_faction:name() == ALANI_KEY then
            armies_stance(context);
            return;
        end
        if cur_faction:name() == ROXOLANI_KEY then
            armies_stance(context);
            return;
        end
        if cur_faction:name() == VANDALI_KEY then
            armies_stance(context);
            return;
        end
        if cur_faction:name() == BURGUNDI_KEY then
            armies_stance3(context);
            return;
        end
        if cur_faction:name() == ALEMANNI_KEY then
            armies_stance3(context);
            return;
        end
        if cur_faction:name() == FRANCI_KEY then
            armies_stance3(context);
            return;
        end
        if cur_faction:name() == LANGOBARDI_KEY then
            armies_stance3(context);
            return;
        end
        if cur_faction:name() == SAXI_KEY then
            armies_stance3(context);
            return;
        end
        if cur_faction:name() == SVEBI_KEY then
            armies_stance3(context);
            return;
        end
    end
end

function armies_stance(context)

    local army_list = context:faction():military_force_list();

    for i = 0, army_list:num_items() - 1 do
        local temp_army = army_list:item_at(i);
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_DEFAULT" then
            add_unit_to_(temp_army);
        end
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_SET_CAMP" then
            add_unit_to_(temp_army);
        end
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_LAND_RAID" then
            add_unit_to_(temp_army);
        end
    end
end

function armies_stance2(context)

    local army_list = context:faction():military_force_list();

    for i = 0, army_list:num_items() - 1 do
        local temp_army = army_list:item_at(i);
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_DEFAULT" then
            add_unit_to_2(temp_army);
        end
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_SET_CAMP" then
            add_unit_to_2(temp_army);
        end
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_LAND_RAID" then
            add_unit_to_2(temp_army);
        end
    end
end

function armies_stance3(context)

    local army_list = context:faction():military_force_list();

    for i = 0, army_list:num_items() - 1 do
        local temp_army = army_list:item_at(i);
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_DEFAULT" then
            add_unit_to_3(temp_army);
        end
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_SET_CAMP" then
            add_unit_to_3(temp_army);
        end
        if temp_army:active_stance() ==
            "MILITARY_FORCE_ACTIVE_STANCE_TYPE_LAND_RAID" then
            add_unit_to_3(temp_army);
        end
    end
end

function add_unit_to_(temp_army)
    if (temp_army:unit_list():num_items() >= 1 and
        temp_army:unit_list():num_items() < 6) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT3, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 6 and
        temp_army:unit_list():num_items() < 10) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT4, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 10 and
        temp_army:unit_list():num_items() < 16) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT1B, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 16 and
        temp_army:unit_list():num_items() < 20) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT3, temp_army:command_queue_index());
                end
            end
        end
    end
end

function add_unit_to_2(temp_army)
    if (temp_army:unit_list():num_items() >= 1 and
        temp_army:unit_list():num_items() < 6) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT3, temp_army:command_queue_index());
                    cm:add_unit_to_force(UNIT2, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 6 and
        temp_army:unit_list():num_items() < 10) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT2, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 10 and
        temp_army:unit_list():num_items() < 16) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT3, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 16 and
        temp_army:unit_list():num_items() < 20) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT1, temp_army:command_queue_index());
                end
            end
        end
    end
end

function add_unit_to_3(temp_army)
    if (temp_army:unit_list():num_items() >= 1 and
        temp_army:unit_list():num_items() < 6) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT4, temp_army:command_queue_index());
                    cm:add_unit_to_force(UNIT1, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 6 and
        temp_army:unit_list():num_items() < 10) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT1, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 10 and
        temp_army:unit_list():num_items() < 16) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT2, temp_army:command_queue_index());
                end
            end
        end
    end
    if (temp_army:unit_list():num_items() >= 16 and
        temp_army:unit_list():num_items() < 20) then

        for key, value in ipairs(buildings1) do
            if temp_army:building_exists(value) then
                for i = 1, key do
                    cm:add_unit_to_force(UNIT1, temp_army:command_queue_index());
                end
            end
        end
    end
end

-------------------------------------------------------------------
-- �������� �������� �������
-------------------------------------------------------------------

function Has_Required_Regions(faction_key, region_list)
    for i = 1, #region_list do
        local region = cm:model():world():region_manager():region_by_key(
                           region_list[i]);

        if region:owning_faction():name() ~= faction_key then
            return false;
        end
    end
    return true;
end

function Rename_Faction(faction_key, rename_key)
    cm:set_faction_name_override(faction_key,
                                 "campaign_localised_strings_string_" ..
                                     rename_key);
    cm:trigger_incident(INSURGENT_KEY, "rex_incident_roma_invicta");
    cm:apply_effect_bundle("att_faction_roman_empire", INSURGENT_KEY, 12);
end

function NEW_WRE_Check(context)
    local has_regions = Has_Required_Regions(context:faction():name(),
                                             REGIONS_WRE);

    if has_regions == true then
        ROMAN_EMPIRE = true;
        Rename_Faction(context:faction():name(), "bel_expedition_western_rome");
    end
end

-------------------------------------------------------------------
-- ����������� � ���� �����ͨ���� ������
-------------------------------------------------------------------

cm:register_saving_game_callback(function(context)
    cm:save_value("ELDERS_HUNS_TRIGGERED", ELDERS_HUNS_TRIGGERED, context);
    cm:save_value("ELDERS_HUNS_TRIGGERED2", ELDERS_HUNS_TRIGGERED2, context);
    cm:save_value("WRE_TRIGGERED", WRE_TRIGGERED, context);
    cm:save_value("VALENT_DEAD", VALENT_DEAD, context);
    cm:save_value("GREITUNGI_LEADER", GREITUNGI_LEADER, context);
    cm:save_value("GREITUNGI_LEADER_DEAD", GREITUNGI_LEADER_DEAD, context);
    cm:save_value("ZERO_TRIGGERED", ZERO_TRIGGERED, context);
    cm:save_value("HUNS_TRIGGERED", HUNS_TRIGGERED, context);
    cm:save_value("HUNS_TRIGGERED1", HUNS_TRIGGERED1, context);
    cm:save_value("HUNS_TRIGGERED2", HUNS_TRIGGERED2, context);
    cm:save_value("HUNS_SRED_TRIGGERED", HUNS_SRED_TRIGGERED, context);
    cm:save_value("HUNS_MLAD_TRIGGERED", HUNS_MLAD_TRIGGERED, context);
    cm:save_value("HUNS_SRED_TRIGGERED2", HUNS_SRED_TRIGGERED2, context);
    cm:save_value("HUNS_MLAD_TRIGGERED2", HUNS_MLAD_TRIGGERED2, context);
    cm:save_value("HUNS_SRED_TRIGGERED3", HUNS_SRED_TRIGGERED3, context);
    cm:save_value("HUNS_MLAD_TRIGGERED3", HUNS_MLAD_TRIGGERED3, context);
    cm:save_value("HUNS_MLAD_TRIGGERED4", HUNS_MLAD_TRIGGERED4, context);
    cm:save_value("FEDERATS_TRIGGERED", FEDERATS_TRIGGERED, context);
    cm:save_value("FEDERATS_PACT", FEDERATS_PACT, context);
    cm:save_value("ROMAN_TRIGGERED", ROMAN_TRIGGERED, context);
    cm:save_value("ROMAN_TRIGGERED2", ROMAN_TRIGGERED2, context);
    cm:save_value("MAVRITANIA_TRIGGERED", MAVRITANIA_TRIGGERED, context);
    cm:save_value("GREITUNGI_TRIGGERED", GREITUNGI_TRIGGERED, context);
    cm:save_value("VENEDI_TRIGGERED", VENEDI_TRIGGERED, context);
    cm:save_value("SVEBI_TRIGGERED", SVEBI_TRIGGERED, context);
    cm:save_value("ROXOLANI_TRIGGERED", ROXOLANI_TRIGGERED, context);
    cm:save_value("KVADI_TRIGGERED", KVADI_TRIGGERED, context);
    cm:save_value("GEPIDI_TRIGGERED", GEPIDI_TRIGGERED, context);
    cm:save_value("BURGUNDI_TRIGGERED", BURGUNDI_TRIGGERED, context);
    cm:save_value("ALEMANNI_TRIGGERED", ALEMANNI_TRIGGERED, context);
    cm:save_value("LANGOBARDI_TRIGGERED", LANGOBARDI_TRIGGERED, context);
    cm:save_value("FRANCI_TRIGGERED", FRANCI_TRIGGERED, context);
    cm:save_value("SAXI_TRIGGERED", SAXI_TRIGGERED, context);
    cm:save_value("YUTI_TRIGGERED", YUTI_TRIGGERED, context);
    cm:save_value("EBDANI_TRIGGERED", EBDANI_TRIGGERED, context);
    cm:save_value("PICTI_TRIGGERED", PICTI_TRIGGERED, context);
    cm:save_value("VOTADINI_TRIGGERED", VOTADINI_TRIGGERED, context);
    cm:save_value("ALANI_TRIGGERED", ALANI_TRIGGERED, context);
    cm:save_value("OSTGOTI_TRIGGERED", OSTGOTI_TRIGGERED, context);
    cm:save_value("VESTGOTI_TRIGGERED", VESTGOTI_TRIGGERED, context);
    cm:save_value("VANDALANI_TRIGGERED", VANDALANI_TRIGGERED, context);
    cm:save_value("INT_Alani", INT_Alani, context);
    cm:save_value("INT_Ostgoti", INT_Ostgoti, context);
    cm:save_value("INT_Vestgoti", INT_Vestgoti, context);
    cm:save_value("INT_Vandali", INT_Vandali, context);
    cm:save_value("INT_Venedi", INT_Venedi, context);
    cm:save_value("INT_Roxolani", INT_Roxolani, context);
    cm:save_value("INT_Kvadi", INT_Kvadi, context);
    cm:save_value("INT_Gepidi", INT_Gepidi, context);
    cm:save_value("INT_Burgundi", INT_Burgundi, context);
    cm:save_value("INT_Alamanni", INT_Alamanni, context);
    cm:save_value("INT_Langobardi", INT_Langobardi, context);
    cm:save_value("INT_Franci", INT_Franci, context);
    cm:save_value("INT_Saxi", INT_Saxi, context);
    cm:save_value("INT_Yuti", INT_Yuti, context);
    cm:save_value("INT_Ebdani", INT_Ebdani, context);
    cm:save_value("INT_Picti", INT_Picti, context);
    cm:save_value("INT_Votadini", INT_Votadini, context);
    cm:save_value("BAGAUDAE_TRIGGERED", BAGAUDAE_TRIGGERED, context);
    cm:save_value("Sarmatov_Kvadov_TRIGGERED", Sarmatov_Kvadov_TRIGGERED,
                  context);
    cm:save_value("ISAVRI_TRIGGERED", ISAVRI_TRIGGERED, context);
    cm:save_value("GREITUNGI_TRIGGERED2", GREITUNGI_TRIGGERED2, context);
    cm:save_value("ANTIOHIA_TRIGGERED", ANTIOHIA_TRIGGERED, context);
    cm:save_value("MACEDONIA_TRIGGERED", MACEDONIA_TRIGGERED, context);
    cm:save_value("VESTGOTI2_TRIGGERED", VESTGOTI2_TRIGGERED, context);
    cm:save_value("WRE_TRIGGERED_SRAWN", WRE_TRIGGERED_SRAWN, context);
    cm:save_value("ERE_TRIGGERED_SRAWN", ERE_TRIGGERED_SRAWN, context);
    cm:save_value("ROMAN_EMPIRE", ROMAN_EMPIRE, context);
    cm:save_value("INT_Roxolani", INT_Roxolani, context);
    cm:save_value("SARACINI_SRAWN", SARACINI_SRAWN, context);
end);

cm:register_loading_game_callback(function(context)
    ELDERS_HUNS_TRIGGERED = cm:load_value("ELDERS_HUNS_TRIGGERED", false,
                                          context);
    ELDERS_HUNS_TRIGGERED2 = cm:load_value("ELDERS_HUNS_TRIGGERED2", false,
                                           context);
    WRE_TRIGGERED = cm:load_value("WRE_TRIGGERED", 0, context);
    VALENT_DEAD = cm:load_value("VALENT_DEAD", 0, context);
    GREITUNGI_LEADER = cm:load_value("GREITUNGI_LEADER", 0, context);
    GREITUNGI_LEADER_DEAD = cm:load_value("GREITUNGI_LEADER_DEAD", 0, context);
    HUNS_TRIGGERED = cm:load_value("HUNS_TRIGGERED", false, context);
    HUNS_TRIGGERED1 = cm:load_value("HUNS_TRIGGERED1", false, context);
    HUNS_TRIGGERED2 = cm:load_value("HUNS_TRIGGERED2", false, context);
    HUNS_SRED_TRIGGERED = cm:load_value("HUNS_SRED_TRIGGERED", false, context);
    HUNS_MLAD_TRIGGERED = cm:load_value("HUNS_MLAD_TRIGGERED", false, context);
    HUNS_SRED_TRIGGERED2 = cm:load_value("HUNS_SRED_TRIGGERED2", false, context);
    HUNS_MLAD_TRIGGERED2 = cm:load_value("HUNS_MLAD_TRIGGERED2", false, context);
    HUNS_SRED_TRIGGERED3 = cm:load_value("HUNS_SRED_TRIGGERED3", false, context);
    HUNS_MLAD_TRIGGERED3 = cm:load_value("HUNS_MLAD_TRIGGERED3", false, context);
    HUNS_MLAD_TRIGGERED4 = cm:load_value("HUNS_MLAD_TRIGGERED4", 0, context);
    FEDERATS_TRIGGERED = cm:load_value("FEDERATS_TRIGGERED", false, context);
    FEDERATS_PACT = cm:load_value("FEDERATS_PACT", false, context);
    ROMAN_TRIGGERED = cm:load_value("ROMAN_TRIGGERED", false, context);
    ROMAN_TRIGGERED2 = cm:load_value("ROMAN_TRIGGERED2", false, context);
    MAVRITANIA_TRIGGERED = cm:load_value("MAVRITANIA_TRIGGERED", false, context);
    GREITUNGI_TRIGGERED = cm:load_value("GREITUNGI_TRIGGERED", false, context);
    ZERO_TRIGGERED = cm:load_value("ZERO_TRIGGERED", 0, context);
    VENEDI_TRIGGERED = cm:load_value("VENEDI_TRIGGERED", 0, context);
    SVEBI_TRIGGERED = cm:load_value("SVEBI_TRIGGERED", 0, context);
    ROXOLANI_TRIGGERED = cm:load_value("ROXOLANI_TRIGGERED", 0, context);
    KVADI_TRIGGERED = cm:load_value("KVADI_TRIGGERED", 0, context);
    GEPIDI_TRIGGERED = cm:load_value("GEPIDI_TRIGGERED", 0, context);
    BURGUNDI_TRIGGERED = cm:load_value("BURGUNDI_TRIGGERED", 0, context);
    ALEMANNI_TRIGGERED = cm:load_value("ALEMANNI_TRIGGERED", 0, context);
    LANGOBARDI_TRIGGERED = cm:load_value("LANGOBARDI_TRIGGERED", 0, context);
    FRANCI_TRIGGERED = cm:load_value("FRANCI_TRIGGERED", 0, context);
    SAXI_TRIGGERED = cm:load_value("SAXI_TRIGGERED", 0, context);
    YUTI_TRIGGERED = cm:load_value("YUTI_TRIGGERED", 0, context);
    EBDANI_TRIGGERED = cm:load_value("EBDANI_TRIGGERED", 0, context);
    PICTI_TRIGGERED = cm:load_value("PICTI_TRIGGERED", 0, context);
    VOTADINI_TRIGGERED = cm:load_value("VOTADINI_TRIGGERED", 0, context);
    ALANI_TRIGGERED = cm:load_value("ALANI_TRIGGERED", 0, context);
    OSTGOTI_TRIGGERED = cm:load_value("OSTGOTI_TRIGGERED", 0, context);
    VESTGOTI_TRIGGERED = cm:load_value("VESTGOTI_TRIGGERED", 0, context);
    VANDALANI_TRIGGERED = cm:load_value("VANDALANI_TRIGGERED", 0, context);
    INT_Alani = cm:load_value("INT_Alani", 0, context);
    INT_Ostgoti = cm:load_value("INT_Ostgoti", 0, context);
    INT_Vestgoti = cm:load_value("INT_Vestgoti", 0, context);
    INT_Vandali = cm:load_value("INT_Vandali", 0, context);
    INT_Venedi = cm:load_value("INT_Venedi", 0, context);
    INT_Roxolani = cm:load_value("INT_Roxolani", 0, context);
    INT_Kvadi = cm:load_value("INT_Kvadi", 0, context);
    INT_Gepidi = cm:load_value("INT_Gepidi", 0, context);
    INT_Burgundi = cm:load_value("INT_Burgundi", 0, context);
    INT_Alamanni = cm:load_value("INT_Alamanni", 0, context);
    INT_Langobardi = cm:load_value("INT_Langobardi", 0, context);
    INT_Franci = cm:load_value("INT_Franci", 0, context);
    INT_Saxi = cm:load_value("INT_Saxi", 0, context);
    INT_Yuti = cm:load_value("INT_Yuti", 0, context);
    INT_Ebdani = cm:load_value("INT_Ebdani", 0, context);
    INT_Picti = cm:load_value("INT_Picti", 0, context);
    INT_Votadini = cm:load_value("INT_Votadini", 0, context);
    BAGAUDAE_TRIGGERED = cm:load_value("BAGAUDAE_TRIGGERED", false, context);
    Sarmatov_Kvadov_TRIGGERED = cm:load_value("Sarmatov_Kvadov_TRIGGERED",
                                              false, context);
    ISAVRI_TRIGGERED = cm:load_value("ISAVRI_TRIGGERED", false, context);
    GREITUNGI_TRIGGERED2 = cm:load_value("GREITUNGI_TRIGGERED2", false, context);
    ANTIOHIA_TRIGGERED = cm:load_value("ANTIOHIA_TRIGGERED", false, context);
    MACEDONIA_TRIGGERED = cm:load_value("MACEDONIA_TRIGGERED", false, context);
    VESTGOTI2_TRIGGERED = cm:load_value("VESTGOTI2_TRIGGERED", 0, context);
    WRE_TRIGGERED_SRAWN = cm:load_value("WRE_TRIGGERED_SRAWN", 0, context);
    ERE_TRIGGERED_SRAWN = cm:load_value("ERE_TRIGGERED_SRAWN", 0, context);
    ROMAN_EMPIRE = cm:load_value("ROMAN_EMPIRE", false, context);
    SARACINI_SRAWN = cm:load_value("SARACINI_SRAWN", 0, context);
end);

