function Add_Barbarian_Invasion_Listeners()
    output("#### Adding Antonina Incident Listeners ####");

    SetupZeroArmyTemplates();
    SetupRomanArmyTemplates();
    SetupBarbarianArmyTemplates();
    SetupErrorArmyTemplates();
    SetupGreithungiArmyTemplates();
    SetupMigrationArmyTemplates();
    cm:add_listener("FactionTurnStart_BI", "FactionTurnStart", true,
                    function(context)
        Great_Invasion(context);

        Immortality_Character_Check(context);
        TRIGGERED_Exodus(context);

        Great_Exodus(context);

        Inflation(context);

    end, true);

    cm:add_listener("FactionTurnStart_BI2", "FactionTurnStart", true,

                    function(context) Dogovor_Federati(context); end, true);
end

function Great_Invasion(context)
    local turn_number = cm:model():turn_number();
    local faction = cm:model():world():faction_by_key(HUNS_STAP_KEY);
    local faction0 = cm:model():world():faction_by_key(ALANI_KEY);
    local faction2 = cm:model():world():faction_by_key(OSTGOTHS_KEY);
    local faction3 = cm:model():world():faction_by_key(VESTGOTHS_KEY);
    local faction4 = cm:model():world():faction_by_key(VANDALI_KEY);
    local faction5 = cm:model():world():faction_by_key(SVEBI_KEY);
    local faction6 = cm:model():world():faction_by_key(ROXOLANI_KEY);
    local faction7 = cm:model():world():faction_by_key(KVADI_KEY);
    local faction8 = cm:model():world():faction_by_key(GEPIDS_KEY);
    local faction9 = cm:model():world():faction_by_key(BURGUNDI_KEY);
    local faction10 = cm:model():world():faction_by_key(ALEMANNI_KEY);
    local faction11 = cm:model():world():faction_by_key(LANGOBARDI_KEY);
    local faction12 = cm:model():world():faction_by_key(FRANCI_KEY);
    local faction13 = cm:model():world():faction_by_key(SAXI_KEY);
    local faction14 = cm:model():world():faction_by_key(EBDANI_KEY);
    local faction15 = cm:model():world():faction_by_key(VOTADINI_KEY);
    local faction16 = cm:model():world():faction_by_key(GREITUNGI_KEY);
    local faction17 = cm:model():world():faction_by_key(INSURGENT_KEY);
    local faction06 = cm:model():world():faction_by_key(RUGII_KEY);
    local faction18 = cm:model():world():faction_by_key(TANUKHIDS_KEY);

    if turn_number == 1 then

        Obbyavit_dip_otn_ne_igrok();
        Obbyavit_dip_otn_ne_igrok2();
        WRE_TRIGGERED = WRE_TRIGGERED + 1;
        VALENT_DEAD = cm:model():world():faction_by_key(EMPIRE_KEY)
                          :faction_leader():command_queue_index();

        if ZERO_TRIGGERED < 16 and not faction0:is_human() then
            Spawn_Vse_Vozrozdenie();
        end
        if ZERO_TRIGGERED < 16 and not faction2:is_human() then
            Spawn_Vse_Vozrozdenie2();
        end
        if ZERO_TRIGGERED < 16 and not faction3:is_human() then
            Spawn_Vse_Vozrozdenie3();
        end
        if ZERO_TRIGGERED < 16 and not faction4:is_human() then
            Spawn_Vse_Vozrozdenie4();
        end
        if ZERO_TRIGGERED < 16 and not faction5:is_human() then
            Spawn_Vse_Vozrozdenie5();
        end
        if ZERO_TRIGGERED < 16 and not faction6:is_human() then
            Spawn_Vse_Vozrozdenie6();
        end
        if ZERO_TRIGGERED < 16 then Spawn_Vse_Vozrozdenie7(); end
        if ZERO_TRIGGERED < 16 then Spawn_Vse_Vozrozdenie8(); end
        if ZERO_TRIGGERED < 16 and not faction9:is_human() then
            Spawn_Vse_Vozrozdenie9();
        end
        if ZERO_TRIGGERED < 16 and not faction10:is_human() then
            Spawn_Vse_Vozrozdenie10();
        end
        if ZERO_TRIGGERED < 16 and not faction11:is_human() then
            Spawn_Vse_Vozrozdenie11();
        end
        if ZERO_TRIGGERED < 16 and not faction12:is_human() then
            Spawn_Vse_Vozrozdenie12();
        end
        if ZERO_TRIGGERED < 16 and not faction13:is_human() then
            Spawn_Vse_Vozrozdenie13();
        end
        if ZERO_TRIGGERED < 16 and not faction14:is_human() then
            Spawn_Vse_Vozrozdenie14();
        end
        if ZERO_TRIGGERED < 16 and not faction06:is_human() then
            Spawn_Vse_Vozrozdenie15();
        end
        if ZERO_TRIGGERED < 16 then Spawn_Vse_Vozrozdenie16(); end

    end

    if turn_number == PEREMIRIE then Obbyavit_Mir(); end

    if turn_number == 5 then Obbyavit_Vassal1(); end

    if ELDERS_HUNS_TRIGGERED == false and turn_number ==
        INVASION_HUNN_ELDERS_TURN then
        -- 
        if not faction:is_human() then Elders_Hunn_Spawn(); end
    end

    if ELDERS_HUNS_TRIGGERED2 == false and turn_number ==
        INVASION_HUNN_ELDERS_TURN2 then
        -- 
        if not faction:is_human() then Elders_Hunn_Spawn2(); end
    end

    if HUNS_TRIGGERED1 == false and turn_number == INVASION_HUNN_TURN1 then
        -- 
        if not faction == faction:is_human() then Hunn_Spawn1(); end
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

    if ROMAN_TRIGGERED == false and turn_number == 52 then Spawn_Roman(); end

    if ROMAN_TRIGGERED2 == false and turn_number == 60 then Spawn_Roman2(); end

    if turn_number == 53 then
        cm:force_declare_war("roman", "att_fact_western_roman_empire");
    end

    if MAVRITANIA_TRIGGERED == false and turn_number == 20 then
        Spawn_RomaMavritania();
    end

    if turn_number == 21 then
        cm:force_declare_war("att_fact_africa", "att_fact_western_roman_empire"); -- 
    end

    if Sarmatov_Kvadov_TRIGGERED == false and turn_number == 29 then
        Spawn_Sarmatov_Kvadov();
    end

    if ISAVRI_TRIGGERED == false and turn_number == 37 then Spawn_Isavri(); end

    if turn_number == 38 then
        cm:force_declare_war("att_fact_separatist_caucasian",
                             "att_fact_eastern_roman_empire"); -- 
    end

    if VESTGOTI2_TRIGGERED >= 0 and VESTGOTI2_TRIGGERED < 3 and turn_number ==
        41 then Spawn_Vestgoti2(); end

    if turn_number == 48 then Hunn_Spawn(); end

    if GREITUNGI_TRIGGERED2 == false and turn_number == 77 then
        Spawn_Greithungi2();
    end

    if turn_number == 78 then
        cm:force_declare_war("att_fact_greuthingi",
                             "att_fact_eastern_roman_empire");
    end

    if ANTIOHIA_TRIGGERED == false and turn_number == 81 then
        Spawn_Antiohia();
    end

    if turn_number == 82 then
        cm:force_declare_war("att_fact_oriens", "att_fact_eastern_roman_empire");
    end

    if MACEDONIA_TRIGGERED == false and turn_number == 98 then
        Spawn_Macedonia();
    end

    if GREITUNGI_TRIGGERED == false and turn_number == 19 then
        Vosstanie_Greithungov(context);
    end

    if ALANI_TRIGGERED > 2 and ALANI_TRIGGERED < 5 then
        Vosstanie_Alanov(context);
    end

    if OSTGOTI_TRIGGERED > 2 and OSTGOTI_TRIGGERED < 5 then
        Vosstanie_Ostgotov(context);
    end

    if VESTGOTI_TRIGGERED > 2 and VESTGOTI_TRIGGERED < 5 then
        Vosstanie_Vestgotov(context);
    end

    if VANDALANI_TRIGGERED > 2 and VANDALANI_TRIGGERED < 5 then
        Vosstanie_Vandalov(context);
    end

    if SVEBI_TRIGGERED > 2 and SVEBI_TRIGGERED < 5 then
        Vosstanie_Svebov(context);
    end

    if VENEDI_TRIGGERED > 2 and VENEDI_TRIGGERED < 4 then
        Vosstanie_Venedov(context);
    end

    if ROXOLANI_TRIGGERED > 2 and ROXOLANI_TRIGGERED < 4 then
        Vosstanie_Roxolanov(context);
    end

    if GEPIDI_TRIGGERED > 2 and GEPIDI_TRIGGERED < 4 then
        Vosstanie_Gepidov(context);
    end

    if BURGUNDI_TRIGGERED > 2 and BURGUNDI_TRIGGERED < 4 then
        Vosstanie_Burgundov(context);
    end

    if ALEMANNI_TRIGGERED > 2 and ALEMANNI_TRIGGERED < 4 then
        Vosstanie_Alemannov(context);
    end

    if LANGOBARDI_TRIGGERED > 2 and LANGOBARDI_TRIGGERED < 4 then
        Vosstanie_Langobardov(context);
    end

    if FRANCI_TRIGGERED > 2 and FRANCI_TRIGGERED < 5 then
        Vosstanie_Frankov(context);
    end

    if SAXI_TRIGGERED > 2 and SAXI_TRIGGERED < 4 then
        Vosstanie_Saxov(context);
    end

    if EBDANI_TRIGGERED > 2 and EBDANI_TRIGGERED < 4 then
        Vosstanie_Skotov(context);
    end
end

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
        temp_region_WRE < 1 then NEW_WRE_Check(context); end

    if not faction:is_human() then
        if WRE_TRIGGERED_SRAWN >= 0 and WRE_TRIGGERED_SRAWN < 2 and
            temp_region_WRE < 62 then
            if not factionWRE:is_human() then Spawn_WRE(); end
        end
        if ERE_TRIGGERED_SRAWN >= 0 and ERE_TRIGGERED_SRAWN < 2 and
            temp_region_ERE < 35 then
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
            cm:kill_character("character_cqi:" .. VALENT_DEAD, false, true);
            WRE_TRIGGERED = WRE_TRIGGERED + 1;
        end

        if ALANI_TRIGGERED < 1 and temp_region_Alani < 2 then
            INT_Alani = 1 + cm:model():turn_number();
            ALANI_TRIGGERED = ALANI_TRIGGERED + 1;
        end
        if OSTGOTI_TRIGGERED < 1 and temp_region_Ostgoti < 2 then
            INT_Ostgoti = 1 + cm:model():turn_number();
            OSTGOTI_TRIGGERED = OSTGOTI_TRIGGERED + 1;
        end
        if VESTGOTI_TRIGGERED < 1 and temp_region_Vestgoti < 2 then
            INT_Vestgoti = 1 + cm:model():turn_number();
            VESTGOTI_TRIGGERED = VESTGOTI_TRIGGERED + 1;
        end
        if VANDALANI_TRIGGERED < 1 and temp_region_Vandalani < 1 then
            INT_Vandali = 1 + cm:model():turn_number();
            VANDALANI_TRIGGERED = VANDALANI_TRIGGERED + 1;
        end
        if SVEBI_TRIGGERED < 1 and temp_region_Svebi < 1 then
            INT_Svebi = 1 + cm:model():turn_number();
            SVEBI_TRIGGERED = SVEBI_TRIGGERED + 1;
        end
        if VENEDI_TRIGGERED < 1 and temp_region_Venedi < 1 then
            INT_Venedi = 1 + cm:model():turn_number();
            VENEDI_TRIGGERED = VENEDI_TRIGGERED + 1;
        end
        if ROXOLANI_TRIGGERED < 1 and temp_region_Roxolani < 1 then
            INT_Roxolani = 1 + cm:model():turn_number();
            ROXOLANI_TRIGGERED = ROXOLANI_TRIGGERED + 1;
        end
        if KVADI_TRIGGERED < 1 and temp_region_Kvadi < 1 then
            INT_Kvadi = 1 + cm:model():turn_number();
            KVADI_TRIGGERED = KVADI_TRIGGERED + 1;
        end
        if GEPIDI_TRIGGERED < 1 and temp_region_Gepidi < 1 then
            INT_Gepidi = 1 + cm:model():turn_number();
            GEPIDI_TRIGGERED = GEPIDI_TRIGGERED + 1;
        end
        if BURGUNDI_TRIGGERED < 1 and temp_region_Burgundi < 1 then
            INT_Burgundi = 1 + cm:model():turn_number();
            BURGUNDI_TRIGGERED = BURGUNDI_TRIGGERED + 1;
        end
        if ALEMANNI_TRIGGERED < 1 and temp_region_Alamanni < 1 then
            INT_Alamanni = 1 + cm:model():turn_number();
            ALEMANNI_TRIGGERED = ALEMANNI_TRIGGERED + 1;
        end
        if LANGOBARDI_TRIGGERED < 1 and temp_region_Langobardi < 1 then
            INT_Langobardi = 1 + cm:model():turn_number();
            LANGOBARDI_TRIGGERED = LANGOBARDI_TRIGGERED + 1;
        end
        if FRANCI_TRIGGERED < 1 and temp_region_Franci < 1 then
            INT_Franci = 1 + cm:model():turn_number();
            FRANCI_TRIGGERED = FRANCI_TRIGGERED + 1;
        end
        if SAXI_TRIGGERED < 1 and temp_region_Saxi < 1 then
            INT_Saxi = 1 + cm:model():turn_number();
            SAXI_TRIGGERED = SAXI_TRIGGERED + 1;
        end
        if EBDANI_TRIGGERED < 1 and temp_region_Ebdani < 1 then
            INT_Ebdani = 1 + cm:model():turn_number();
            EBDANI_TRIGGERED = EBDANI_TRIGGERED + 1;
        end
        if VOTADINI_TRIGGERED < 1 and temp_region_Votadini < 1 then
            INT_Votadini = 1 + cm:model():turn_number();
            VOTADINI_TRIGGERED = VOTADINI_TRIGGERED + 1;
        end

        if temp_region_Alani >= 1 then
            if (cm:model():world():faction_by_key(ALANI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Alani();
            end
        end
        if temp_region_Ostgoti >= 1 then
            if (cm:model():world():faction_by_key(OSTGOTHS_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Ostgoti();
            end
        end
        if temp_region_Vestgoti >= 1 then
            if (cm:model():world():faction_by_key(VESTGOTHS_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Vestgoti();
            end
        end
        if temp_region_Vandalani >= 1 then
            if (cm:model():world():faction_by_key(VANDALI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Vandali();
            end
        end
        if temp_region_Svebi >= 1 then
            if (cm:model():world():faction_by_key(SVEBI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Svebi();
            end
        end
        if temp_region_Roxolani >= 1 then
            if (cm:model():world():faction_by_key(ROXOLANI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Roxolani();
            end
        end
        if temp_region_Kvadi >= 1 then
            if (cm:model():world():faction_by_key(KVADI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Kvadi();
            end
        end
        if temp_region_Gepidi >= 1 then
            if (cm:model():world():faction_by_key(GEPIDS_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Gepidi();
            end
        end
        if temp_region_Burgundi >= 1 then
            if (cm:model():world():faction_by_key(BURGUNDI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Burgundi();
            end
        end
        if temp_region_Alamanni >= 1 then
            if (cm:model():world():faction_by_key(ALEMANNI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Alamanni();
            end
        end
        if temp_region_Langobardi >= 1 then
            if (cm:model():world():faction_by_key(LANGOBARDI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Langobardi();
            end
        end
        if temp_region_Franci >= 1 then
            if (cm:model():world():faction_by_key(FRANCI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Franci();
            end
        end
        if temp_region_Saxi >= 1 then
            if (cm:model():world():faction_by_key(SAXI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Saxi();
            end
        end
        if temp_region_Ebdani >= 1 then
            if (cm:model():world():faction_by_key(EBDANI_KEY)
                :military_force_list():num_items() < 1) then
                Spawn2_Ebdani();
            end
        end
    end
end

function Inflation(context) end

function TRIGGERED_Exodus(context)

    local faction = context:faction();
    local turn_number = cm:model():turn_number();

    if ALANI_TRIGGERED >= 1 and ALANI_TRIGGERED < 3 and turn_number == INT_Alani then

        if (cm:model():world():faction_by_key(ALANI_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Alani(); end
    end
    if OSTGOTI_TRIGGERED >= 1 and OSTGOTI_TRIGGERED < 3 and turn_number ==
        INT_Ostgoti then

        if (cm:model():world():faction_by_key(OSTGOTHS_KEY)
            :military_force_list():num_items() <= 5) then
            Spawn_Ostgoti();
        end
    end
    if VESTGOTI_TRIGGERED >= 1 and VESTGOTI_TRIGGERED < 3 and turn_number ==
        INT_Vestgoti then

        if (cm:model():world():faction_by_key(VESTGOTHS_KEY)
            :military_force_list():num_items() <= 5) then
            Spawn_Vestgoti();
        end
    end
    if VANDALANI_TRIGGERED >= 1 and VANDALANI_TRIGGERED < 3 and turn_number ==
        INT_Vandali then

        if (cm:model():world():faction_by_key(VANDALI_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Vandali(); end
    end
    if SVEBI_TRIGGERED >= 1 and SVEBI_TRIGGERED < 3 and turn_number == INT_Svebi then

        if (cm:model():world():faction_by_key(SVEBI_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Svebi(); end
    end
    if VENEDI_TRIGGERED >= 1 and VENEDI_TRIGGERED < 3 and turn_number ==
        INT_Venedi then

        if (cm:model():world():faction_by_key(RUGII_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Venedi(); end
    end
    if ROXOLANI_TRIGGERED >= 1 and ROXOLANI_TRIGGERED < 3 and turn_number ==
        INT_Roxolani then

        if (cm:model():world():faction_by_key(ROXOLANI_KEY)
            :military_force_list():num_items() <= 5) then
            Spawn_Roxolani();
        end
    end
    if KVADI_TRIGGERED >= 1 and KVADI_TRIGGERED < 3 and turn_number == INT_Kvadi then

        if (cm:model():world():faction_by_key(KVADI_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Kvadi(); end
    end
    if GEPIDI_TRIGGERED >= 1 and GEPIDI_TRIGGERED < 3 and turn_number ==
        INT_Gepidi then

        if (cm:model():world():faction_by_key(GEPIDS_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Gepidi(); end
    end
    if BURGUNDI_TRIGGERED >= 1 and BURGUNDI_TRIGGERED < 3 and turn_number ==
        INT_Burgundi then

        if (cm:model():world():faction_by_key(BURGUNDI_KEY)
            :military_force_list():num_items() <= 5) then
            Spawn_Burgundi();
        end
    end
    if ALEMANNI_TRIGGERED >= 1 and ALEMANNI_TRIGGERED < 3 and turn_number ==
        INT_Alamanni then

        if (cm:model():world():faction_by_key(ALEMANNI_KEY)
            :military_force_list():num_items() <= 5) then
            Spawn_Alamanni();
        end
    end
    if LANGOBARDI_TRIGGERED >= 1 and LANGOBARDI_TRIGGERED < 3 and turn_number ==
        INT_Langobardi then

        if (cm:model():world():faction_by_key(LANGOBARDI_KEY)
            :military_force_list():num_items() <= 5) then
            Spawn_Langobardi();
        end
    end
    if FRANCI_TRIGGERED >= 1 and FRANCI_TRIGGERED < 3 and turn_number ==
        INT_Franci then

        if (cm:model():world():faction_by_key(FRANCI_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Franci(); end
    end
    if SAXI_TRIGGERED >= 1 and SAXI_TRIGGERED < 3 and turn_number == INT_Saxi then

        if (cm:model():world():faction_by_key(SAXI_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Saxi(); end
    end
    if EBDANI_TRIGGERED >= 1 and EBDANI_TRIGGERED < 3 and turn_number ==
        INT_Ebdani then

        if (cm:model():world():faction_by_key(EBDANI_KEY):military_force_list()
            :num_items() <= 5) then Spawn_Ebdani(); end
    end
end

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

function Dogovor_Federati(context)
    if context:faction():name() == VESTGOTHS_KEY then
        local turn_number = cm:model():turn_number();

        if turn_number >= 1 and FEDERATS_TRIGGERED == false then
            local ER_Empire = cm:model():world():faction_by_key(EMPIRE_KEY);

            if context:faction():at_war_with(ER_Empire) == false then
                FEDERATS_TRIGGERED = true;
                if context:faction():is_human() == true then
                    cm:apply_effect_bundle("rex_bundle_treaty_federates",
                                           VESTGOTHS_KEY, 24);
                    message_treaty_federates(context);
                end
            end
            if context:faction():at_war_with(ER_Empire) == true then
                cm:remove_effect_bundle("rex_bundle_treaty_federates",
                                        VESTGOTHS_KEY);
            end
        end
        if FEDERATS_TRIGGERED == true then
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

        if FEDERATS_PACT == false then
            local VESTGOTHS = cm:model():world():faction_by_key(VESTGOTHS_KEY);

            if context:faction():at_war_with(VESTGOTHS) == false then
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
            if context:faction():at_war_with(VESTGOTHS) == true then
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
        if FEDERATS_PACT == true then
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
    end
end

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

function Elders_Hunn_Spawn()
    ELDERS_HUNS_TRIGGERED = true;
    Obbyavit_Voinu();
    Obbyavit_Vassal();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(HUNS_STAP_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_STAP_KEY, -1);
    end);

end

function Elders_Hunn_Spawn2()
    ELDERS_HUNS_TRIGGERED2 = true;
    Obbyavit_Voinu();
    Obbyavit_Vassal();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(HUNS_STAP_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_STAP_KEY, -1);
    end);

end

function Hunn_Spawn1()
    HUNS_TRIGGERED1 = true;
    local spawn_pos = FindSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 6, false);

    cm:create_force(ROBBERS_HUNN_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ROBBERS_HUNN_KEY, -1);

    end);

end

function Hunn_Spawn()
    HUNS_TRIGGERED = true;
    local spawn_pos = FindSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(ROBBERS_HUNN_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

function Hunn_Spawn2()
    HUNS_TRIGGERED2 = true;
    Obbyavit_Voinu2();
    local spawn_pos = FindSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Hunn", 19, false);

    cm:create_force(ROBBERS_HUNN_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

function Hunn_Sred_Spawn()
    HUNS_SRED_TRIGGERED = true;
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn2", 33, false);

    cm:create_force(HUNS_SRED_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn2,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_SRED_KEY, -1);
    end);

end

function Hunn_Mlad_Spawn()
    HUNS_MLAD_TRIGGERED = true
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 33, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", HUNS_MLAD_KEY, -1);
    end);

end

function Hunn_Sred_Spawn2()
    HUNS_SRED_TRIGGERED2 = true;
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn2", 19, false);

    cm:create_force(HUNS_SRED_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn2,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

function Hunn_Mlad_Spawn2()
    HUNS_MLAD_TRIGGERED2 = true;
    Obbyavit_Voinu1();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 19, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

function Hunn_Sred_Spawn3()
    HUNS_SRED_TRIGGERED3 = true;
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn2", 19, false);

    cm:create_force(HUNS_SRED_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn2,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

function Hunn_Mlad_Spawn3()
    HUNS_MLAD_TRIGGERED3 = true;
    Obbyavit_Vassal1();
    local spawn_pos = FindSpawn();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 19, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

function Hunn_Mlad_Spawn4()
    HUNS_MLAD_TRIGGERED4 = HUNS_MLAD_TRIGGERED4 + 1;
    Obbyavit_Voinu_Rimu();
    local spawn_pos = FindSpawnEuro();
    local unit_list = ram.GetRandomForce("voiska_Hunn3", 19, false);

    cm:create_force(HUNS_MLAD_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Hunn3,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);

    end);

end

function Bagaud_Spawn()
    BAGAUDAE_TRIGGERED = true;
    Obbyavit_Voinu_WRE();
    local spawn_pos = FindSpawnBagaud();
    local unit_list = ram.GetRandomForce("voiska_Bagauds", 19, false);

    cm:create_force(BAGAUDAE_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Bagauds,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", BAGAUDAE_KEY, -1);
    end);

end

function Spawn_Greithungi()
    GREITUNGI_TRIGGERED = true;
    local spawn_pos = FindGreithungiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Greithung", 19, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Greithung,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_make_vassal("att_fact_white_huns", "att_fact_greuthingi"); -- 

end

function Spawn_Roman()
    ROMAN_TRIGGERED = true;
    local spawn_pos = FindRomanSpawn();
    local unit_list = ram.GetRandomForce("voiska_Roman", 19, false);

    cm:create_force(INSURGENT_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Roman,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("roman", "att_fact_western_roman_empire"); -- 

end

function Spawn_Roman2()
    ROMAN_TRIGGERED2 = true;
    local spawn_pos = FindSpawnBagaud();
    local unit_list = ram.GetRandomForce("voiska_Roman", 19, false);

    cm:create_force(INSURGENT_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Roman,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("roman", "att_fact_western_roman_empire"); -- 

end

function Spawn_RomaMavritania()
    MAVRITANIA_TRIGGERED = true;
    local spawn_pos = FindRomaMavritaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_RomaMavritania", 17, false);

    cm:create_force(REBEL_MAVRITANIA_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_RomaMavritania,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

function Spawn_Sarmatov_Kvadov()
    Sarmatov_Kvadov_TRIGGERED = true;
    local spawn_pos = FindSarmatov_KvadovSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 17, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

function Spawn_Isavri()
    ISAVRI_TRIGGERED = true;
    local spawn_pos = FindIsavriSpawn();
    local unit_list = ram.GetRandomForce("voiska_Isavri", 15, false);

    cm:create_force(ISAVRI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Isavri,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

function Spawn_Greithungi2()
    GREITUNGI_TRIGGERED2 = true;
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Greithung", 19, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Greithung,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("att_fact_greuthingi", "att_fact_eastern_roman_empire");

end

function Spawn_Antiohia()
    ANTIOHIA_TRIGGERED = true;
    local spawn_pos = FindAntiohiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Antiohia", 16, false);

    cm:create_force(ANTIOHIA_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Antiohia,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);
    cm:force_declare_war("att_fact_oriens", "att_fact_eastern_roman_empire");

end

function Spawn_Macedonia()
    MACEDONIA_TRIGGERED = true;
    local spawn_pos = FindMacedoniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 16, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

function Spawn_Vse_Vozrozdenie()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn0();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ALANI_KEY, -1);

    end);

end

function Spawn_Vse_Vozrozdenie2()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn02();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(OSTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", OSTGOTHS_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie3()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn03();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", VESTGOTHS_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie4()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn04();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VANDALI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", VANDALI_KEY, -1);

    end);

end

function Spawn_Vse_Vozrozdenie5()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn05();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SVEBI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", SVEBI_KEY, -1);

    end);

end

function Spawn_Vse_Vozrozdenie6()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn06();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ROXOLANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ROXOLANI_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie7()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn07();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", KVADI_KEY, -1);

    end);

end

function Spawn_Vse_Vozrozdenie8()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn08();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(GEPIDS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", GEPIDS_KEY, -1);

    end);

end

function Spawn_Vse_Vozrozdenie9()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn09();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(BURGUNDI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", BURGUNDI_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie10()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn010();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALEMANNI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", ALEMANNI_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie11()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn011();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(LANGOBARDI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", LANGOBARDI_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie12()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn012();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(FRANCI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", FRANCI_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie13()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn013();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SAXI_KEY, unit_list, "att_reg_dacia_petrodava", spawn_pos.x,
                    spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", SAXI_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie14()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn014();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(EBDANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", EBDANI_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie15()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn015();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(RUGII_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", RUGII_KEY, -1);
    end);

end

function Spawn_Vse_Vozrozdenie16()
    ZERO_TRIGGERED = ZERO_TRIGGERED + 1;
    local spawn_pos = FindSpawn016();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(GREITUNGI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
        cm:apply_effect_bundle_to_characters_force(
            "att_bundle_military_upkeep_free_force", cqi, -1, true);
        cm:apply_effect_bundle("bel_bundle_free_food", GREITUNGI_KEY, -1);
    end);

end

function Spawn_Alani()
    ALANI_TRIGGERED = ALANI_TRIGGERED + 1;
    local spawn_pos = FindAlaniSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats", 19, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Alani2()
    ALANI_TRIGGERED = ALANI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn2();
    local unit_list = ram.GetRandomForce("voiska_Sarmats", 19, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)
        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);

end

function Spawn_Ostgoti()
    OSTGOTI_TRIGGERED = OSTGOTI_TRIGGERED + 1;
    local spawn_pos = FindOstgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Greithung", 19, false);

    cm:create_force(OSTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Greithung,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);

end

function Spawn_Vestgoti()
    VESTGOTI_TRIGGERED = VESTGOTI_TRIGGERED + 1;
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

function Spawn_Vestgoti2()
    VESTGOTI2_TRIGGERED = VESTGOTI2_TRIGGERED + 1;
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

function Spawn_Vandali()
    VANDALANI_TRIGGERED = VANDALANI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(VANDALI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Svebi()
    SVEBI_TRIGGERED = SVEBI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Veneds", 19, false);

    cm:create_force(SVEBI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Veneds,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Venedi()
    VENEDI_TRIGGERED = VENEDI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(RUGII_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Roxolani()
    ROXOLANI_TRIGGERED = ROXOLANI_TRIGGERED + 1;
    local spawn_pos = FindAntSpawn();
    local unit_list = ram.GetRandomForce("voiska_Ant", 19, false);

    cm:create_force(ROXOLANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Kvadi()
    KVADI_TRIGGERED = KVADI_TRIGGERED + 1;
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Gepidi()
    GEPIDI_TRIGGERED = GEPIDI_TRIGGERED + 1;
    local spawn_pos = FindGepidiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Sarmats_Germans", 19, false);

    cm:create_force(GEPIDS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Sarmats_Germans,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Burgundi()
    BURGUNDI_TRIGGERED = BURGUNDI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(BURGUNDI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Alamanni()
    ALEMANNI_TRIGGERED = ALEMANNI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(ALEMANNI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Langobardi()
    LANGOBARDI_TRIGGERED = LANGOBARDI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(LANGOBARDI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Franci()
    FRANCI_TRIGGERED = FRANCI_TRIGGERED + 1;
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(FRANCI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Saxi()
    SAXI_TRIGGERED = SAXI_TRIGGERED + 1;
    local spawn_pos = FindFrisiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(SAXI_KEY, unit_list, "att_reg_dacia_petrodava", spawn_pos.x,
                    spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Ebdani()
    EBDANI_TRIGGERED = EBDANI_TRIGGERED + 1;
    local spawn_pos = FindCaledoniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Germans", 19, false);

    cm:create_force(EBDANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Germans,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Alani()
    local spawn_pos = FindAlaniSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Ostgoti()
    local spawn_pos = FindOstgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(OSTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Vestgoti()
    local spawn_pos = FindVestgotiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VESTGOTHS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Vandali()
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(VANDALI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Svebi()
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SVEBI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);

    end);

end

function Spawn2_Roxolani()
    local spawn_pos = FindAntSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ROXOLANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Kvadi()
    local spawn_pos = FindVandaliSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(KVADI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Gepidi()
    local spawn_pos = FindGepidiSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(GEPIDS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Burgundi()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(BURGUNDI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Alamanni()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(ALEMANNI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Langobardi()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(LANGOBARDI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Franci()
    local spawn_pos = FindGermaniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(FRANCI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Saxi()
    local spawn_pos = FindFrisiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(SAXI_KEY, unit_list, "att_reg_dacia_petrodava", spawn_pos.x,
                    spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn2_Ebdani()
    local spawn_pos = FindCaledoniaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Zero", 4, false);

    cm:create_force(EBDANI_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Zero,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_Tanukhids()
    SARACINI_SRAWN = SARACINI_SRAWN + 1;
    Obbyavit_dip_otn_ne_igrok3();
    local spawn_pos = FindArabiaSpawn();
    local unit_list = ram.GetRandomForce("voiska_Tanukhids", 19, false);

    cm:create_force(TANUKHIDS_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_Tanukhids,Turn:" .. cm:model():turn_number() ..
                        ",X:" .. spawn_pos.x .. ",Y:" .. spawn_pos.y, true,
                    function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_WRE()
    WRE_TRIGGERED_SRAWN = WRE_TRIGGERED_SRAWN + 1;
    local spawn_pos = FindWRESpawn();
    local unit_list = ram.GetRandomForce("voiska_WRE", 19, false);

    cm:create_force(EXPEDITION_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_WRE,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function Spawn_ERE()
    ERE_TRIGGERED_SRAWN = ERE_TRIGGERED_SRAWN + 1;
    local spawn_pos = FindERESpawn();
    local unit_list = ram.GetRandomForce("voiska_WRE", 19, false);

    cm:create_force(EMPIRE_KEY, unit_list, "att_reg_dacia_petrodava",
                    spawn_pos.x, spawn_pos.y,
                    "voiska_WRE,Turn:" .. cm:model():turn_number() .. ",X:" ..
                        spawn_pos.x .. ",Y:" .. spawn_pos.y, true, function(cqi)

        cm:apply_effect_bundle_to_characters_force(
            "bel_bundle_stance_army_raiding", cqi, -1, true);
    end);
end

function FindSpawnEuro()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_euro);

        if IsValidSpawn(army_euro[randomSpawn].x, army_euro[randomSpawn].y, true) then
            pos = army_euro[randomSpawn];
            table.remove(army_euro, randomSpawn);
            return pos;
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_euro);

        if IsValidSpawn(army_euro[randomSpawn].x, army_euro[randomSpawn].y,
                        false) then
            pos = army_euro[randomSpawn];
            table.remove(army_euro, randomSpawn);
            return pos;
        end
    end

    pos = army_euro[randomSpawn];
    table.remove(army_euro, randomSpawn);
    return pos;
end

function FindSpawn0()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero);

        if IsValidSpawn(army_zero[randomSpawn].x, army_zero[randomSpawn].y, true) then
            pos = army_zero[randomSpawn];
            table.remove(army_zero, randomSpawn);
            return pos;
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero);

        if IsValidSpawn(army_zero[randomSpawn].x, army_zero[randomSpawn].y,
                        false) then
            pos = army_zero[randomSpawn];
            table.remove(army_zero, randomSpawn);
            return pos;
        end
    end

    pos = army_zero[randomSpawn];
    table.remove(army_zero, randomSpawn);
    return pos;
end

function FindSpawn02()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero2);

        if IsValidSpawn(army_zero2[randomSpawn].x, army_zero2[randomSpawn].y,
                        true) then
            pos = army_zero2[randomSpawn];
            table.remove(army_zero2, randomSpawn);
            return pos;
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero2);

        if IsValidSpawn(army_zero2[randomSpawn].x, army_zero2[randomSpawn].y,
                        false) then
            pos = army_zero2[randomSpawn];
            table.remove(army_zero2, randomSpawn);
            return pos;
        end
    end

    pos = army_zero2[randomSpawn];
    table.remove(army_zero2, randomSpawn);
    return pos;
end

function FindSpawn03()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero3);

        if IsValidSpawn(army_zero3[randomSpawn].x, army_zero3[randomSpawn].y,
                        true) then
            pos = army_zero3[randomSpawn];
            table.remove(army_zero3, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero3);

        if IsValidSpawn(army_zero3[randomSpawn].x, army_zero3[randomSpawn].y,
                        false) then
            pos = army_zero3[randomSpawn];
            table.remove(army_zero3, randomSpawn);
            return pos;
        end
    end

    pos = army_zero3[randomSpawn];
    table.remove(army_zero3, randomSpawn);
    return pos;
end

function FindSpawn04()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero4);

        if IsValidSpawn(army_zero4[randomSpawn].x, army_zero4[randomSpawn].y,
                        true) then
            pos = army_zero4[randomSpawn];
            table.remove(army_zero4, randomSpawn);
            return pos;
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero4);

        if IsValidSpawn(army_zero4[randomSpawn].x, army_zero4[randomSpawn].y,
                        false) then
            pos = army_zero4[randomSpawn];
            table.remove(army_zero4, randomSpawn);
            return pos;
        end
    end

    pos = army_zero4[randomSpawn];
    table.remove(army_zero4, randomSpawn);
    return pos;
end

function FindSpawn05()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero5);

        if IsValidSpawn(army_zero5[randomSpawn].x, army_zero5[randomSpawn].y,
                        true) then
            pos = army_zero5[randomSpawn];
            table.remove(army_zero5, randomSpawn);
            return pos;
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero5);

        if IsValidSpawn(army_zero5[randomSpawn].x, army_zero5[randomSpawn].y,
                        false) then
            pos = army_zero5[randomSpawn];
            table.remove(army_zero5, randomSpawn);
            return pos;
        end
    end

    pos = army_zero5[randomSpawn];
    table.remove(army_zero5, randomSpawn);
    return pos;
end

function FindSpawn06()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero6);

        if IsValidSpawn(army_zero6[randomSpawn].x, army_zero6[randomSpawn].y,
                        true) then
            pos = army_zero6[randomSpawn];
            table.remove(army_zero6, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero6);

        if IsValidSpawn(army_zero6[randomSpawn].x, army_zero6[randomSpawn].y,
                        false) then
            pos = army_zero6[randomSpawn];
            table.remove(army_zero6, randomSpawn);
            return pos;
        end
    end

    pos = army_zero6[randomSpawn];
    table.remove(army_zero6, randomSpawn);
    return pos;
end

function FindSpawn07()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero7);

        if IsValidSpawn(army_zero7[randomSpawn].x, army_zero7[randomSpawn].y,
                        true) then
            pos = army_zero7[randomSpawn];
            table.remove(army_zero7, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero7);

        if IsValidSpawn(army_zero7[randomSpawn].x, army_zero7[randomSpawn].y,
                        false) then
            pos = army_zero7[randomSpawn];
            table.remove(army_zero7, randomSpawn);
            return pos;
        end
    end

    pos = army_zero7[randomSpawn];
    table.remove(army_zero7, randomSpawn);
    return pos;
end

function FindSpawn08()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero8);

        if IsValidSpawn(army_zero8[randomSpawn].x, army_zero8[randomSpawn].y,
                        true) then
            pos = army_zero8[randomSpawn];
            table.remove(army_zero8, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero8);

        if IsValidSpawn(army_zero8[randomSpawn].x, army_zero8[randomSpawn].y,
                        false) then
            pos = army_zero8[randomSpawn];
            table.remove(army_zero8, randomSpawn);
            return pos;
        end
    end

    pos = army_zero8[randomSpawn];
    table.remove(army_zero8, randomSpawn);
    return pos;
end

function FindSpawn09()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero9);

        if IsValidSpawn(army_zero9[randomSpawn].x, army_zero9[randomSpawn].y,
                        true) then
            pos = army_zero9[randomSpawn];
            table.remove(army_zero9, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero9);

        if IsValidSpawn(army_zero9[randomSpawn].x, army_zero9[randomSpawn].y,
                        false) then
            pos = army_zero9[randomSpawn];
            table.remove(army_zero9, randomSpawn);
            return pos;
        end
    end

    pos = army_zero9[randomSpawn];
    table.remove(army_zero9, randomSpawn);
    return pos;
end

function FindSpawn010()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero10);

        if IsValidSpawn(army_zero10[randomSpawn].x, army_zero10[randomSpawn].y,
                        true) then
            pos = army_zero10[randomSpawn];
            table.remove(army_zero10, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero10);

        if IsValidSpawn(army_zero10[randomSpawn].x, army_zero10[randomSpawn].y,
                        false) then
            pos = army_zero10[randomSpawn];
            table.remove(army_zero10, randomSpawn);
            return pos;
        end
    end

    pos = army_zero10[randomSpawn];
    table.remove(army_zero10, randomSpawn);
    return pos;
end

function FindSpawn011()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero11);

        if IsValidSpawn(army_zero11[randomSpawn].x, army_zero11[randomSpawn].y,
                        true) then
            pos = army_zero11[randomSpawn];
            table.remove(army_zero11, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero11);

        if IsValidSpawn(army_zero11[randomSpawn].x, army_zero11[randomSpawn].y,
                        false) then
            pos = army_zero11[randomSpawn];
            table.remove(army_zero11, randomSpawn);
            return pos;
        end
    end

    pos = army_zero11[randomSpawn];
    table.remove(army_zero11, randomSpawn);
    return pos;
end

function FindSpawn012()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero12);

        if IsValidSpawn(army_zero12[randomSpawn].x, army_zero12[randomSpawn].y,
                        true) then
            pos = army_zero12[randomSpawn];
            table.remove(army_zero12, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero12);

        if IsValidSpawn(army_zero12[randomSpawn].x, army_zero12[randomSpawn].y,
                        false) then
            pos = army_zero12[randomSpawn];
            table.remove(army_zero12, randomSpawn);
            return pos;
        end
    end

    pos = army_zero12[randomSpawn];
    table.remove(army_zero12, randomSpawn);
    return pos;
end

function FindSpawn013()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero13);

        if IsValidSpawn(army_zero13[randomSpawn].x, army_zero13[randomSpawn].y,
                        true) then
            pos = army_zero13[randomSpawn];
            table.remove(army_zero13, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero13);

        if IsValidSpawn(army_zero13[randomSpawn].x, army_zero13[randomSpawn].y,
                        false) then
            pos = army_zero13[randomSpawn];
            table.remove(army_zero13, randomSpawn);
            return pos;
        end
    end

    pos = army_zero13[randomSpawn];
    table.remove(army_zero13, randomSpawn);
    return pos;
end

function FindSpawn014()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero14);

        if IsValidSpawn(army_zero14[randomSpawn].x, army_zero14[randomSpawn].y,
                        true) then
            pos = army_zero14[randomSpawn];
            table.remove(army_zero14, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero14);

        if IsValidSpawn(army_zero14[randomSpawn].x, army_zero14[randomSpawn].y,
                        false) then
            pos = army_zero14[randomSpawn];
            table.remove(army_zero14, randomSpawn);
            return pos;
        end
    end

    pos = army_zero14[randomSpawn];
    table.remove(army_zero14, randomSpawn);
    return pos;
end

function FindSpawn015()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero15);

        if IsValidSpawn(army_zero15[randomSpawn].x, army_zero15[randomSpawn].y,
                        true) then
            pos = army_zero15[randomSpawn];
            table.remove(army_zero15, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero15);

        if IsValidSpawn(army_zero15[randomSpawn].x, army_zero15[randomSpawn].y,
                        false) then
            pos = army_zero15[randomSpawn];
            table.remove(army_zero15, randomSpawn);
            return pos;
        end
    end

    pos = army_zero15[randomSpawn];
    table.remove(army_zero15, randomSpawn);
    return pos;
end

function FindSpawn016()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero16);

        if IsValidSpawn(army_zero16[randomSpawn].x, army_zero16[randomSpawn].y,
                        true) then
            pos = army_zero16[randomSpawn];
            table.remove(army_zero16, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_zero16);

        if IsValidSpawn(army_zero16[randomSpawn].x, army_zero16[randomSpawn].y,
                        false) then
            pos = army_zero16[randomSpawn];
            table.remove(army_zero16, randomSpawn);
            return pos;
        end
    end

    pos = army_zero16[randomSpawn];
    table.remove(army_zero16, randomSpawn);
    return pos;
end

function FindSpawnBagaud()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_galliya);

        if IsValidSpawn(army_galliya[randomSpawn].x,
                        army_galliya[randomSpawn].y, true) then
            pos = army_galliya[randomSpawn];
            table.remove(army_galliya, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_galliya);

        if IsValidSpawn(army_galliya[randomSpawn].x,
                        army_galliya[randomSpawn].y, false) then
            pos = army_galliya[randomSpawn];
            table.remove(army_galliya, randomSpawn);
            return pos;
        end
    end

    pos = army_galliya[randomSpawn];
    table.remove(army_galliya, randomSpawn);
    return pos;
end

function FindSarmatov_KvadovSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Sarmatov_Kvadov);

        if IsValidSpawn(army_Sarmatov_Kvadov[randomSpawn].x,
                        army_Sarmatov_Kvadov[randomSpawn].y, true) then
            pos = army_Sarmatov_Kvadov[randomSpawn];
            table.remove(army_Sarmatov_Kvadov, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Sarmatov_Kvadov);

        if IsValidSpawn(army_Sarmatov_Kvadov[randomSpawn].x,
                        army_Sarmatov_Kvadov[randomSpawn].y, false) then
            pos = army_Sarmatov_Kvadov[randomSpawn];
            table.remove(army_Sarmatov_Kvadov, randomSpawn);
            return pos;
        end
    end

    pos = army_Sarmatov_Kvadov[randomSpawn];
    table.remove(army_Sarmatov_Kvadov, randomSpawn);
    return pos;
end

function FindIsavriSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Isavri);

        if IsValidSpawn(army_Isavri[randomSpawn].x, army_Isavri[randomSpawn].y,
                        true) then
            pos = army_Isavri[randomSpawn];
            table.remove(army_Isavri, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Isavri);

        if IsValidSpawn(army_Isavri[randomSpawn].x, army_Isavri[randomSpawn].y,
                        false) then
            pos = army_Isavri[randomSpawn];
            table.remove(army_Isavri, randomSpawn);
            return pos;
        end
    end

    pos = army_Isavri[randomSpawn];
    table.remove(army_Isavri, randomSpawn);
    return pos;
end

function FindMacedoniaSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Makedonia);

        if IsValidSpawn(army_Makedonia[randomSpawn].x,
                        army_Makedonia[randomSpawn].y, true) then
            pos = army_Makedonia[randomSpawn];
            table.remove(army_Makedonia, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Makedonia);

        if IsValidSpawn(army_Makedonia[randomSpawn].x,
                        army_Makedonia[randomSpawn].y, false) then
            pos = army_Makedonia[randomSpawn];
            table.remove(army_Makedonia, randomSpawn);
            return pos;
        end
    end

    pos = army_Makedonia[randomSpawn];
    table.remove(army_Makedonia, randomSpawn);
    return pos;
end

function FindAntiohiaSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Antiohia);

        if IsValidSpawn(army_Antiohia[randomSpawn].x,
                        army_Antiohia[randomSpawn].y, true) then
            pos = army_Antiohia[randomSpawn];
            table.remove(army_Antiohia, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Antiohia);

        if IsValidSpawn(army_Antiohia[randomSpawn].x,
                        army_Antiohia[randomSpawn].y, false) then
            pos = army_Antiohia[randomSpawn];
            table.remove(army_Antiohia, randomSpawn);
            return pos;
        end
    end

    pos = army_Antiohia[randomSpawn];
    table.remove(army_Antiohia, randomSpawn);
    return pos;
end

function FindSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_sarmatiya);

        if IsValidSpawn(army_sarmatiya[randomSpawn].x,
                        army_sarmatiya[randomSpawn].y, true) then
            pos = army_sarmatiya[randomSpawn];
            table.remove(army_sarmatiya, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_sarmatiya);

        if IsValidSpawn(army_sarmatiya[randomSpawn].x,
                        army_sarmatiya[randomSpawn].y, false) then
            pos = army_sarmatiya[randomSpawn];
            table.remove(army_sarmatiya, randomSpawn);
            return pos;
        end
    end

    pos = army_sarmatiya[randomSpawn];
    table.remove(army_sarmatiya, randomSpawn);
    return pos;
end

function FindSpawn2()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_east);

        if IsValidSpawn(army_east[randomSpawn].x, army_east[randomSpawn].y, true) then
            pos = army_east[randomSpawn];
            table.remove(army_east, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_east);

        if IsValidSpawn(army_east[randomSpawn].x, army_east[randomSpawn].y,
                        false) then
            pos = army_east[randomSpawn];
            table.remove(army_east, randomSpawn);
            return pos;
        end
    end

    pos = army_east[randomSpawn];
    table.remove(army_east, randomSpawn);
    return pos;
end

function FindRomanSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_brittania);

        if IsValidSpawn(army_brittania[randomSpawn].x,
                        army_brittania[randomSpawn].y, true) then
            pos = army_brittania[randomSpawn];
            table.remove(army_brittania, randomSpawn); -- 
            return pos; --
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_brittania);

        if IsValidSpawn(army_brittania[randomSpawn].x,
                        army_brittania[randomSpawn].y, false) then
            pos = army_brittania[randomSpawn];
            table.remove(army_brittania, randomSpawn);
            return pos;
        end
    end

    pos = army_brittania[randomSpawn];
    table.remove(army_brittania, randomSpawn);
    return pos;
end

function FindRomaMavritaniaSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_mavritania);

        if IsValidSpawn(army_mavritania[randomSpawn].x,
                        army_mavritania[randomSpawn].y, true) then
            pos = army_mavritania[randomSpawn];
            table.remove(army_mavritania, randomSpawn); -- 
            return pos; --
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_mavritania);

        if IsValidSpawn(army_mavritania[randomSpawn].x,
                        army_mavritania[randomSpawn].y, false) then
            pos = army_mavritania[randomSpawn];
            table.remove(army_mavritania, randomSpawn);
            return pos;
        end
    end

    pos = army_mavritania[randomSpawn];
    table.remove(army_mavritania, randomSpawn);
    return pos;
end

function FindGreithungiSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_chersonessus);

        if IsValidSpawn(army_chersonessus[randomSpawn].x,
                        army_chersonessus[randomSpawn].y, true) then
            pos = army_chersonessus[randomSpawn];
            table.remove(army_chersonessus, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_chersonessus);

        if IsValidSpawn(army_chersonessus[randomSpawn].x,
                        army_chersonessus[randomSpawn].y, false) then
            pos = army_chersonessus[randomSpawn];
            table.remove(army_chersonessus, randomSpawn);
            return pos;
        end
    end

    pos = army_chersonessus[randomSpawn];
    table.remove(army_chersonessus, randomSpawn);
    return pos;
end

function FindAlaniSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_leopolis);

        if IsValidSpawn(army_leopolis[randomSpawn].x,
                        army_leopolis[randomSpawn].y, true) then
            pos = army_leopolis[randomSpawn];
            table.remove(army_leopolis, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_leopolis);

        if IsValidSpawn(army_leopolis[randomSpawn].x,
                        army_leopolis[randomSpawn].y, false) then
            pos = army_leopolis[randomSpawn];
            table.remove(army_leopolis, randomSpawn);
            return pos;
        end
    end

    pos = army_leopolis[randomSpawn];
    table.remove(army_leopolis, randomSpawn);
    return pos;
end

function FindOstgotiSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_petrodava);

        if IsValidSpawn(army_petrodava[randomSpawn].x,
                        army_petrodava[randomSpawn].y, true) then
            pos = army_petrodava[randomSpawn];
            table.remove(army_petrodava, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_petrodava);

        if IsValidSpawn(army_petrodava[randomSpawn].x,
                        army_petrodava[randomSpawn].y, false) then
            pos = army_petrodava[randomSpawn];
            table.remove(army_petrodava, randomSpawn);
            return pos;
        end
    end

    pos = army_petrodava[randomSpawn];
    table.remove(army_petrodava, randomSpawn);
    return pos;
end

function FindVestgotiSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_markianorol);

        if IsValidSpawn(army_markianorol[randomSpawn].x,
                        army_markianorol[randomSpawn].y, true) then
            pos = army_markianorol[randomSpawn];
            table.remove(army_markianorol, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_markianorol);

        if IsValidSpawn(army_markianorol[randomSpawn].x,
                        army_markianorol[randomSpawn].y, false) then
            pos = army_markianorol[randomSpawn];
            table.remove(army_markianorol, randomSpawn);
            return pos;
        end
    end

    pos = army_markianorol[randomSpawn];
    table.remove(army_markianorol, randomSpawn);
    return pos;
end

function FindVandaliSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis);

        if IsValidSpawn(army_budorgis[randomSpawn].x,
                        army_budorgis[randomSpawn].y, true) then
            pos = army_budorgis[randomSpawn];
            table.remove(army_budorgis, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis);

        if IsValidSpawn(army_budorgis[randomSpawn].x,
                        army_budorgis[randomSpawn].y, false) then
            pos = army_budorgis[randomSpawn];
            table.remove(army_budorgis, randomSpawn);
            return pos;
        end
    end

    pos = army_budorgis[randomSpawn];
    table.remove(army_budorgis, randomSpawn);
    return pos;
end

function FindVandaliSpawn2()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis2);

        if IsValidSpawn(army_budorgis2[randomSpawn].x,
                        army_budorgis2[randomSpawn].y, true) then
            pos = army_budorgis2[randomSpawn];
            table.remove(army_budorgis2, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_budorgis2);

        if IsValidSpawn(army_budorgis2[randomSpawn].x,
                        army_budorgis2[randomSpawn].y, false) then
            pos = army_budorgis2[randomSpawn];
            table.remove(army_budorgis2, randomSpawn);
            return pos;
        end
    end

    pos = army_budorgis2[randomSpawn];
    table.remove(army_budorgis2, randomSpawn);
    return pos;
end

function FindGepidiSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_apulum);

        if IsValidSpawn(army_apulum[randomSpawn].x, army_apulum[randomSpawn].y,
                        true) then
            pos = army_apulum[randomSpawn];
            table.remove(army_apulum, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_apulum);

        if IsValidSpawn(army_apulum[randomSpawn].x, army_apulum[randomSpawn].y,
                        false) then
            pos = army_apulum[randomSpawn];
            table.remove(army_apulum, randomSpawn);
            return pos;
        end
    end

    pos = army_apulum[randomSpawn];
    table.remove(army_apulum, randomSpawn);
    return pos;
end

function FindGermaniaSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_germania);

        if IsValidSpawn(army_germania[randomSpawn].x,
                        army_germania[randomSpawn].y, true) then
            pos = army_germania[randomSpawn];
            table.remove(army_germania, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_germania);

        if IsValidSpawn(army_germania[randomSpawn].x,
                        army_germania[randomSpawn].y, false) then
            pos = army_germania[randomSpawn];
            table.remove(army_germania, randomSpawn);
            return pos;
        end
    end

    pos = army_germania[randomSpawn];
    table.remove(army_germania, randomSpawn);
    return pos;
end

function FindFrisiaSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_frisia);

        if IsValidSpawn(army_frisia[randomSpawn].x, army_frisia[randomSpawn].y,
                        true) then
            pos = army_frisia[randomSpawn];
            table.remove(army_frisia, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_frisia);

        if IsValidSpawn(army_frisia[randomSpawn].x, army_frisia[randomSpawn].y,
                        false) then
            pos = army_frisia[randomSpawn];
            table.remove(army_frisia, randomSpawn);
            return pos;
        end
    end

    pos = army_frisia[randomSpawn];
    table.remove(army_frisia, randomSpawn);
    return pos;
end

function FindCaledoniaSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_caledonia);

        if IsValidSpawn(army_caledonia[randomSpawn].x,
                        army_caledonia[randomSpawn].y, true) then
            pos = army_caledonia[randomSpawn];
            table.remove(army_caledonia, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_caledonia);

        if IsValidSpawn(army_caledonia[randomSpawn].x,
                        army_caledonia[randomSpawn].y, false) then
            pos = army_caledonia[randomSpawn];
            table.remove(army_caledonia, randomSpawn);
            return pos;
        end
    end

    pos = army_caledonia[randomSpawn];
    table.remove(army_caledonia, randomSpawn);
    return pos;
end

function FindArabiaSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Arabia);

        if IsValidSpawn(army_Arabia[randomSpawn].x, army_Arabia[randomSpawn].y,
                        true) then
            pos = army_Arabia[randomSpawn];
            table.remove(army_Arabia, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_Arabia);

        if IsValidSpawn(army_Arabia[randomSpawn].x, army_Arabia[randomSpawn].y,
                        false) then
            pos = army_Arabia[randomSpawn];
            table.remove(army_Arabia, randomSpawn);
            return pos;
        end
    end

    pos = army_Arabia[randomSpawn];
    table.remove(army_Arabia, randomSpawn);
    return pos;
end

function FindWRESpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_WRE);

        if IsValidSpawn(army_WRE[randomSpawn].x, army_WRE[randomSpawn].y, true) then
            pos = army_WRE[randomSpawn];
            table.remove(army_WRE, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_WRE);

        if IsValidSpawn(army_WRE[randomSpawn].x, army_WRE[randomSpawn].y, false) then
            pos = army_WRE[randomSpawn];
            table.remove(army_WRE, randomSpawn);
            return pos;
        end
    end

    pos = army_WRE[randomSpawn];
    table.remove(army_WRE, randomSpawn);
    return pos;
end

function FindERESpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ERE);

        if IsValidSpawn(army_ERE[randomSpawn].x, army_ERE[randomSpawn].y, true) then
            pos = army_ERE[randomSpawn];
            table.remove(army_ERE, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ERE);

        if IsValidSpawn(army_ERE[randomSpawn].x, army_ERE[randomSpawn].y, false) then
            pos = army_ERE[randomSpawn];
            table.remove(army_ERE, randomSpawn);
            return pos;
        end
    end

    pos = army_ERE[randomSpawn];
    table.remove(army_ERE, randomSpawn);
    return pos;
end

function FindAntSpawn()
    local pos = nil;

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ant);

        if IsValidSpawn(army_ant[randomSpawn].x, army_ant[randomSpawn].y, true) then
            pos = army_ant[randomSpawn];
            table.remove(army_ant, randomSpawn); -- 
            return pos; -- 
        end
    end

    for i = 0, SPAWN_ATTEMPTS do
        local randomSpawn = cm:random_number(#army_ant);

        if IsValidSpawn(army_ant[randomSpawn].x, army_ant[randomSpawn].y, false) then
            pos = army_ant[randomSpawn];
            table.remove(army_ant, randomSpawn);
            return pos;
        end
    end

    pos = army_ant[randomSpawn];
    table.remove(army_ant, randomSpawn);
    return pos;
end

function SetupZeroArmyTemplates()
    output("#### Adding Army Incident Listeners ####");

    ram.NewForce("voiska_Zero");
    ram.AddUnit("voiska_Zero", "rex_pict_barb_spearmen_ishoda", 1);

    ram.AddMandatoryUnit("voiska_Zero", "rex_pict_barb_spearmen_ishoda", 1);
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

Immortality_character = {
    {32, "forename:2147344857"}, {56, "forename:2147347535"},
    {64, "forename:3000000038,surname:0000000000"},
    {84, "forename:2147337916,surname:2147328253"},
    {112, "forename:2147343910,surname:2147344054"},
    {172, "forename:2147343885"}, {44, "forename:2147345141"},
    {52, "forename:3000000001"}
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

function Check_faction_list(context)
    local faction_list = cm:model():world():faction_list();
    local temp_region_WRE = cm:model():world():faction_by_key(EXPEDITION_KEY)
                                :region_list():num_items();
    local temp_region_ERE = cm:model():world():faction_by_key(EMPIRE_KEY)
                                :region_list():num_items();

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

