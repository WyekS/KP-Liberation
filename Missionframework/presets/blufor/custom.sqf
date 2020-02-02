/*
    Needed Mods:
    - None

    Optional Mods:
    - BWMod
    - RHSUSAF
    - F-15C
    - F/A-18
    - CUP Weapons
    - CUP Vehicles
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V1_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "B_Truck_01_box_F";                                // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "B_Truck_01_medical_F";                        // This is the mobile respawn (and medical) truck.
huron_typename = "ffaa_famet_ch47_des_mg";                              // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "B_crew_F";                                         // This defines the crew for vehicles.
pilot_classname = "ffaa_piloto_tigre_famet";                                      // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "B_Heli_Light_01_F";              // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "B_Truck_01_transport_F";               // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "B_Radar_System_01_F";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["ffaa_et_moe_fusilero_mochila_ds",2,0,0],
    ["ffaa_et_moe_lg_ds",5,0,0],
    ["ffaa_et_moe_mg_ds",5,0,0],
    ["ffaa_et_moe_medico_ds",5,0,0],
    ["ffaa_et_moe_tirador_ds",5,0,0],
    ["ffaa_et_moe_sabot_ds",5,0,0],
    ["ffaa_et_moe_at_C90_ds",5,5,0],
    ["ffaa_brilat_observador_ds",3,0,0],
    ["ffaa_brilat_mg42_ds",3,0,0],
    ["ffaa_et_moe_sl_ds",5,0,0],
    ["ffaa_brilat_medico_ds",3,0,0],
    ["ffaa_brilat_tirador_ds",3,0,0],
    ["ffaa_et_moe_lider_ds",5,0,0],
    ["ffaa_brilat_alcotan_ds",5,10,0],
    ["ffaa_et_moe_at_ds",5,10,0],
    ["ffaa_brilat_francotirador_barrett_ds",10,0,0],
    ["ffaa_pilot_harri",2,0,0],
    ["ffaa_brilat_carrista_ds",1,0,0],
    ["ffaa_piloto_tigre_famet",1,0,0]                                            // Pilot
];

light_vehicles = [
    ["C_IDAP_Van_02_transport_F",0,0,2],
    ["C_IDAP_Offroad_02_unarmed_F",0,0,2],
    ["C_Offroad_02_unarmed_F_green",0,0,2],
    ["CUP_B_M1030_USMC",0,0,2],
    ["C_Van_02_medevac_F",0,0,2],
    ["C_IDAP_Van_02_medevac_F",0,0,2],
    ["ffaa_et_vamtac_ume",0,0,2],
    ["ffaa_et_anibal",0,0,2],
    ["ffaa_et_rg31_samson",0,10,2],
    ["ffaa_et_vamtac_lag40",0,20,2],
    ["ffaa_et_vamtac_m2",0,20,2],
    ["ffaa_et_vamtac_tow",0,20,2],
    ["ffaa_et_vamtac_crows",0,20,2],
    ["ffaa_et_vamtac_mistral",0,20,2],
    ["ffaa_et_vamtac_cardom",0,20,2],
    ["ffaa_et_m250_recuperacion_blin",0,0,5],
    ["ffaa_et_m250_carga_blin",0,0,5],
    ["ffaa_et_m250_carga_lona_blin",0,0,5],
    ["ffaa_et_m250_estacion_nasams_blin",0,0,5],
    ["ffaa_et_pegaso_carga",0,0,5],
    ["ffaa_et_pegaso_carga_lona",0,0,5],
    ["B_Truck_01_transport_F",0,0,5],
    ["B_Truck_01_covered_F",0,0,5],
    ["B_UGV_01_F",0,0,5],
    ["B_UGV_01_rcws_F",0,50,5],
    ["ffaa_ar_supercat",0,0,2],
    ["ffaa_ar_lcm",0,0,30],
    ["rhsusf_m998_w_4dr",0,0,2],
    ["rhsusf_rg33_m2_d",0,10,3],
    ["fsf_fnk_norm_ce",0,0,3],
    ["greuh_fnk_norm_ce",0,0,3],
    ["I_MRAP_03_F",0,0,3],
    ["I_MRAP_03_hmg_F",0,10,3],
    ["I_MRAP_03_gmg_F",0,20,3],
    ["fsf_fnk_hmg_ce",0,10,3],
    ["greuh_fnk_hmg_ce",0,10,3],
    ["greuh_fnk_hmg_dsrt",0,10,3]
];

heavy_vehicles = [
    ["ffaa_et_toa_m2",0,35,8],
    ["ffaa_et_toa_zapador",0,40,8],
    ["ffaa_et_pizarro_mauser",0,60,15],
    ["ffaa_et_leopardo",0,100,30],
    ["ffaa_et_toa_ambulancia",0,0,10],
    ["ffaa_et_toa_mando",0,0,10],
    ["ffaa_et_m250_sistema_nasams_blin",0,750,30],
    ["I_APC_Wheeled_03_cannon_F",0,50,10],
    ["greuh_pandur_wdld",0,50,10],
    ["I_APC_tracked_03_cannon_F",0,40,15],
    ["greuh_fv510_wdld",0,40,15],
    ["greuh_fv510_dsrt",0,40,15],
    ["RHS_M2A3_BUSKIII_wd",0,55,15],
    ["Steve_MBT_Kuma",0,100,25],
    ["I_MBT_03_cannon_F",0,100,25],
    ["rhsusf_m1a2sep1tuskiid_usarmy",0,100,25],
    ["Burnes_FV4034_01",0,250,40]
];

air_vehicles = [
    ["C_IDAP_UGV_01_F",0,0,20],
    ["C_IDAP_UAV_06_medical_F",0,0,12],
    ["C_UAV_06_medical_F",0,0,12],
    ["C_IDAP_UAV_06_antimine_F",0,0,12],
    ["C_IDAP_Heli_Transport_02_F",0,0,12],
    ["ffaa_et_searcherIII",0,30,0],
    ["ffaa_reaper_multirrol",0,500,30],
    ["ffaa_UAVStation",0,0,5],
    ["ffaa_famet_ch47_des_mg",0,20,10],
    ["ffaa_famet_ch47_mg",0,20,10],
    ["ffaa_famet_cougar_olive",0,20,12],
    ["ffaa_famet_cougar",0,20,12],
    ["ffaa_famet_tigre_aa",0,150,30],
    ["ffaa_famet_tigre_at",0,150,30],
    ["ffaa_famet_tigre_cas",0,150,30],
    ["ffaa_ar_harrier_cas",0,500,50],
    ["ffaa_ar_harrier_gbu",0,500,50],
    ["ffaa_ar_harrier_mr",0,600,50],
    ["ffaa_ea_hercules_camo",0,0,50],
    ["greuh_aw159_t",0,0,12],
    ["greuh_aw159_a",0,50,12],
    ["I_Heli_light_03_unarmed_F",0,0,12],
    ["I_Heli_light_03_F",0,50,12],
    ["JNS_Skycrane_BLU_Black",0,0,18],
    ["RHS_CH_47F",0,20,20],
    ["greuh_eh101_gr",0,0,25],
    ["I_Heli_Transport_02_F",0,0,25],
    ["MV22",0,0,25],
    ["RHS_AH1Z_wd_GS",0,175,30],
    ["H_RAH66",0,200,30],
    ["RHS_AH64D_wd",0,400,50],
    ["FIR_F16C",0,100,30],
    ["FIR_F15E",0,200,50],
    ["JS_JC_FA18E",0,350,40],
    ["JS_JC_FA18F",0,350,40],
    ["sab_C130_CSP",0,0,30],
    ["sab_C130_J",0,0,30],
    ["usaf_f22",0,500,75],
    ["USAF_F35A",0,600,75],
    ["I_Plane_Fighter_03_AA_F",0,50,30],
    ["I_Plane_Fighter_03_CAS_F",0,100,30]
];

static_vehicles = [
    ["ffaa_m2_tripode",0,10,0],
    ["ffaa_lag40_tripode",0,20,0],
    ["ffaa_milan_tripode",0,25,0],
    ["ffaa_mistral_tripode",0,30,0],
    ["ffaa_spike_tripode",0,30,0],
    ["ffaa_tow_tripode",0,30,0],
    ["B_HMG_01_F",0,10,0],
    ["B_HMG_01_high_F",0,10,0],
    ["B_GMG_01_F",0,20,0],
    ["B_GMG_01_high_F",0,20,0],
    ["B_static_AA_F",0,25,0],
    ["B_static_AT_F",0,30,0],
    ["B_Mortar_01_F",0,100,0]
];

buildings = [
    ["MetalBarrel_burning_F",0,0,0],
    ["Campfire_burning_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_Camping_Light_F",0,0,0],
    ["Jbad_Mil_Guardhouse",0,0,0],
    ["Jbad_Mil_House",0,0,0],
    ["Jbad_Mil_ControlTower",0,0,0],
    ["Land_CanvasCover_01_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrierBig_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["ffaa_bandera_espa",0,0,0],
    ["ffaa_bandera_rhino",0,0,0],
    ["ffaa_bandera_gir",0,0,0],
    ["ffaa_bandera_A2",0,0,0],
    ["ffaa_bandera_vikingos",0,0,0],
    ["Land_HelipadSquare_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_MetalCase_01_large_F",0,0,0],
    ["CargoNet_01_box_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["Land_Metal_rack_Tall_F",0,0,0],
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],     
    ["Land_PortableGenerator_01_F",0,0,0],
    ["76n6ClamShell",0,0,0],
    ["Land_Garaz_s_tankem",0,0,0],
    ["Land_Ammostore2",0,0,0],
    ["Land_Barrack2",0,0,0],
    ["Fortress2",0,0,0],
    ["Land_Hlidac_Budka_EP1",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

// TODO Se han dejado algunos de serie, comprobar cuales no hacen falta
support_vehicles = [
    [Arsenal_typename,100,200,0],
    [Respawn_truck_typename,200,0,100],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,75],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["Jbad_Mil_Repair_center_Big",0,0,0],
    ["Land_MedicalTent_01_white_IDAP_open_F",0,0,0],
    ["Land_Medevac_house_V1_F",3,0,0],
    ["Land_Medevac_HQ_V1_F",6,0,0],
    ["Box_NATO_AmmoVeh_F",0,154,0],
    ["Box_East_AmmoVeh_F",0,115,0],    
    ["JNS_Skycrane_Pod_Bench_BLU_Black",5,0,0],
    ["JNS_Skycrane_Pod_Ammo_BLU_Black",5,0,0],
    ["JNS_Skycrane_Pod_Medical_BLU_Black",5,0,0],
    ["JNS_Skycrane_Pod_Repair_BLU_Black",5,0,0],
    ["JNS_Skycrane_Pod_Transport_BLU_Black",5,0,0]
    ["CUP_B_TowingTractor_NATO",50,0,25],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["B_Truck_01_Repair_F",325,0,75],                                   // HEMTT Repair
    ["B_Truck_01_fuel_F",125,0,275],                                    // HEMTT Fuel
    ["B_Truck_01_ammo_F",125,200,75],                                   // HEMTT Ammo
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",325,0,75],                   // M977A4 Repair
    ["rhsusf_M978A4_BKIT_usarmy_wd",125,0,275],                         // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",125,200,75],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "ffaa_brilat_jefe_peloton_ds",
    "ffaa_brilat_tirador_ds",
    "ffaa_brilat_medico_ds",
    "ffaa_brilat_observador_ds",
    "ffaa_brilat_granadero_ds"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "ffaa_et_moe_lider_ds",
    "ffaa_et_moe_tirador_ds",
    "ffaa_et_moe_medico_ds",
    "ffaa_et_moe_mg_ds",
    "ffaa_et_moe_at_C90_ds",
    "ffaa_et_moe_fusilero_mochila_ds",
    "ffaa_et_moe_fusilero_mochila_ds"
];

// AT specialists squad.
blufor_squad_at = [
    "ffaa_brilat_jefe_peloton_ds",
    "ffaa_brilat_c90_ds",
    "ffaa_brilat_c90_ds",
    "ffaa_brilat_c90_ds"
];

// AA specialists squad.
blufor_squad_aa = [
    "ffaa_brilat_jefe_peloton_ds",
    "ffaa_brilat_alcotan_ds",
    "ffaa_brilat_alcotan_ds",
    "ffaa_brilat_alcotan_ds"
];

// Force recon squad.
blufor_squad_recon = [
    "ffaa_brilat_jefe_peloton_ds",
    "ffaa_brilat_soldado_ds",
    "ffaa_brilat_c90_ds",
    "ffaa_brilat_mg4_ds",
    "ffaa_brilat_granadero_ds",
    "ffaa_brilat_soldado_ds",
    "ffaa_brilat_mg4_ds",
    "ffaa_brilat_soldado_ds",
    "ffaa_brilat_c90_ds"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "ffaa_pilot_harri",
    "ffaa_pilot_harri",
    "ffaa_pilot_harri",
    "ffaa_pilot_harri",
    "ffaa_pilot_harri",
    "ffaa_pilot_harri",
    "ffaa_pilot_harri",
    "ffaa_pilot_harri"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/

// TODO En lythum está vacío; lo dejamos en blanco hasta pensar que items definir aquí
elite_vehicles = [];
/*elite_vehicles = [
    "rhsusf_mkvsoc",                                                    // Mk.V SOCOM
    "rhsusf_m1a1aim_tuski_wd",                                          // M1A1SA (Tusk I)
    "B_MBT_01_TUSK_F",                                                  // M2A4 Slammer UP
    "rhsusf_m1a2sep1tuskiiwd_usarmy",                                   // M1A2SEPv1 (Tusk II)
    "BWA3_Leopard2_Fleck",                                              // MBT Leopard 2A6M
    "B_MBT_01_arty_F",                                                  // M4 Scorcher
    "rhsusf_m109_usarmy",                                               // M109A6
    "B_MBT_01_mlrs_F",                                                  // M5 Sandstorm MLRS
    "B_Heli_Attack_01_dynamicLoadout_F",                                // AH-99 Blackfoot
    "RHS_AH64D_wd",                                                     // AH-64D (Multi-Role)
    "BWA3_Tiger_RMK_Universal",                                         // UH Tiger RMK (Universal)
    "B_UAV_02_dynamicLoadout_F",                                        // MQ-4A Greyhawk
    "B_T_UAV_03_dynamicLoadout_F",                                      // MQ-12 Falcon
    "B_UAV_05_F",                                                       // UCAV Sentinel
    "B_Plane_CAS_01_dynamicLoadout_F",                                  // A-164 Wipeout (CAS)
    "I_Plane_Fighter_04_F",                                             // A-149 Gryphon
    "RHS_A10",                                                          // A-10A (CAS)
    "FIR_F15C",                                                         // F-15C Eagle
    "FIR_F15D",                                                         // F-15D Eagle
    "FIR_F15E",                                                         // F-15E Strike Eagle
    "JS_JC_FA18E",                                                      // F/A-18 E Super Hornet
    "JS_JC_FA18F",                                                      // F/A-18 F Super Hornet
    "B_Plane_Fighter_01_F",                                             // F/A-181 Black Wasp II
    "B_Plane_Fighter_01_Stealth_F",                                     // F/A-181 Black Wasp II (Stealth)
    "B_T_VTOL_01_armed_F"                                               // V-44 X Blackfish (Armed)
];*/
