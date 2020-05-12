/*
    Needed Mods:
    - None
	* Append Cbo. Mike:
	- Pandur II
	- FFAA
    - FFAA Extras
    - FFAA ACE Compatibility

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
huron_typename = "ffaa_famet_ch47_mg";                              // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
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
    ["ffaa_et_moe_fusilero_mochila_ds",10,0,0],
    ["ffaa_et_moe_lg_ds",10,10,0],
    ["ffaa_et_moe_mg_ds",10,10,0],
    ["ffaa_et_moe_medico_ds",20,0,0],
    ["ffaa_et_moe_tirador_ds",20,10,0],
    ["ffaa_et_moe_sabot_ds",10,10,0],
    ["ffaa_et_moe_at_C90_ds",10,10,0],
    ["ffaa_brilat_observador_ds",10,0,0],
    ["ffaa_brilat_mg42_ds",10,0,0],
    ["ffaa_et_moe_sl_ds",10,0,0],
    ["ffaa_brilat_medico_ds",10,0,0],
    ["ffaa_brilat_tirador_ds",10,0,0],
    ["ffaa_et_moe_lider_ds",10,0,0],
    ["ffaa_brilat_alcotan_ds",10,10,0],
    ["ffaa_et_moe_at_ds",10,10,0],
    ["ffaa_brilat_francotirador_barrett_ds",20,20,0],
    ["ffaa_pilot_harri",10,0,0],
    ["ffaa_brilat_carrista_ds",10,0,0],
    ["ffaa_piloto_tigre_famet",10,0,0]                                            // Pilot
];

light_vehicles = [
// VANILLA ARMA

	// drones 
    ["B_UGV_01_F",200,0,100],
    ["B_UGV_01_rcws_F",300,100,100],
	// barcos 
	["B_Boat_Armed_01_minigun_F",300,300,200],
    ["B_Boat_Transport_01_F",50,0,50],
// FFAA 
	// LINCES
    ["ffaa_et_anibal",50,0,50],
    ["ffaa_et_lince_m2",200,100,100],
    ["ffaa_et_lince_ambulancia",100,0,100],
	// VANTACS
    ["ffaa_et_vamtac_trans",100,0,100],
    ["ffaa_et_vamtac_trans_blind",150,0,100],
    ["ffaa_et_vamtac_m2",200,100,100],
    ["ffaa_et_vamtac_crows",300,100,100],
    ["ffaa_et_vamtac_tow",300,200,100],
    ["ffaa_et_vamtac_mistral",200,200,100],
    ["ffaa_et_vamtac_cardom",200,300,100],
    ["ffaa_et_vamtac_ume",100,0,100],
	// NAYALA
    ["ffaa_et_rg31_samson",200,100,150],
	// BARCOS
    ["ffaa_ar_supercat",100,0,50],
    ["ffaa_ar_lcm",500,0,300],
// IMPORTADOS (+200 de cada material)
	// Desert
    ["rhsusf_m1025_d",300,200,300],								// HMMWV 
    ["rhsusf_m1025_d_m2",300,300,300], 							// HMMWV M2
    ["rhsusf_m966_d",300,400,300],								// HMMWV TOW
    ["rhsusf_M1230a1_usarmy_d",400,0,400],						// Med MRAP
    ["rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy",500,0,400]		// Field Hospital
	// Woodland
//    ["rhsusf_m1025_w",300,200,300],								// HMMWV 
//    ["rhsusf_m1025_w_m2",300,300,300],							// HMMWV M2
//    ["rhsusf_m966_w",300,400,300],								// HMMWV TOW
//    ["rhsusf_M1230a1_usarmy_wd",0,55,15],							// Med MRAP
//    ["rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy",0,55,15] 		// Field Hospital
];

heavy_vehicles = [
// FFAA
	// TOAs
    ["ffaa_et_toa_m2",300,100,200],
    ["ffaa_et_toa_spike",300,200,200],
    ["ffaa_et_toa_zapador",300,100,200],
    ["ffaa_et_toa_ambulancia",400,0,200],
    ["ffaa_et_toa_mando",500,0,200],
	// Martillo
    ["ffaa_et_pizarro_mauser",500,400,300],
    ["ffaa_et_leopardo",900,600,600],
	// AA 
    ["ffaa_et_m250_sistema_nasams_blin",200,300,150],
    ["ffaa_et_m250_estacion_nasams_blin",400,0,150],
// APC - PANDUR
	// Neutral
//    ["Pandur2_E",400,500,200],
//	  ["Pandur2_medical_E",500,0,200],
//	  ["Pandur2_unarmed_E",400,0,200],
	// Desert
//    ["Pandur2_D",400,500,200],
//    ["Pandur2_medical_D",500,0,200],
//    ["Pandur2_unarmed_D",400,0,200],
	// Woodland
    ["Pandur2_WD",500,500,200],
    ["Pandur2_medical_WD",500,0,200],
    ["Pandur2_unarmed_WD",400,0,200],
// IFV - WARRIOR ?

// IMPORTADO (+300 de cada material)
    ["rhsusf_m1a1fep_od",1200,900,900],
	// Desert 
    ["rhsusf_m113d_usarmy_medical",700,300,500],		// M113 Medical
    ["rhsusf_m113d_usarmy",600,400,500],				// APC M113 M2
    ["rhsusf_stryker_m1126_m2_d",800,400,500],			// APC Striker M2 CROW
    ["RHS_M2A3",900,900,600],							// Bradley v1
    ["RHS_M2A3_BUSKIII",1000,900,600],					// Bradley v2 (+Armor)
    ["rhsusf_m1a1fep_d",1200,900,900]					// M1A1 Abrams
	// Woodland
//    ["rhsusf_m113_usarmy_medical",700,300,500],			// M113 Medical
//    ["rhsusf_m113_usarmy",600,400,500],					// APC M113 M2
//    ["rhsusf_stryker_m1126_m2_wd",800,400,500],			// APC Striker M2 CROW
//    ["RHS_M2A3_wd",900,900,600],							// Bradley v1 
//    ["RHS_M2A3_BUSKIII_wd",1000,900,600],					// Bradley v2 
//    ["rhsusf_m1a1fep_wd",1200,900,900]					// M1A1 Abrams

];

air_vehicles = [
    ["C_IDAP_UGV_01_F",250,250,250],
    ["C_IDAP_UAV_06_medical_F",100,0,0],
    ["C_UAV_06_medical_F",100,0,0],
    ["C_IDAP_UAV_06_antimine_F",75,0,0],
    ["C_IDAP_Heli_Transport_02_F",500,0,250],
    ["ffaa_et_searcherIII",300,0,100],
    ["ffaa_reaper_multirrol",500,250,200],
    ["ffaa_UAVStation",250,0,100],
    ["ffaa_famet_ch47_mg",500,25,250],
    ["ffaa_famet_cougar_olive",500,100,250],
    ["ffaa_famet_cougar",500,100,250],
    ["ffaa_famet_tigre_aa",800,500,500],
    ["ffaa_famet_tigre_at",800,500,500],
    ["ffaa_famet_tigre_cas",800,500,500],
    ["ffaa_ar_harrier_cas",1500,1500,500],
    ["ffaa_ar_harrier_gbu",1500,1500,500],
    ["ffaa_ar_harrier_mr",1500,1500,500],
    ["ffaa_ea_hercules_camo",1500,0,500],
    ["greuh_aw159_t",500,100,250],
    ["greuh_aw159_a",500,100,250],
    ["I_Heli_light_03_unarmed_F",250,0,100],
    ["I_Heli_light_03_F",250,50,100],
    ["JNS_Skycrane_BLU_Black",0,0,18],
    ["RHS_CH_47F",500,25,250],
    ["I_Heli_Transport_02_F",500,0,250],
    ["MV22",1000,0,800],
    ["RHS_AH1Z_wd_GS",800,500,500],
    ["H_RAH66",800,500,500],
    ["RHS_AH64D_wd",800,500,500],
    ["FIR_F16C",1500,1500,500],
    ["FIR_F15E",2000,2000,500],
    ["JS_JC_FA18E",1300,1300,300],
    ["JS_JC_FA18F",1500,1500,500],
    ["sab_C130_CSP",1500,0,500],
    ["sab_C130_J",1500,0,500],
    ["usaf_f22",1500,1500,500],
    ["USAF_F35A",2000,1000,500],
    ["I_Plane_Fighter_03_AA_F",1500,1500,500],
    ["I_Plane_Fighter_03_CAS_F",1500,1500,500]
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
// 1- Barricadas/Fortificaciones
    ["Land_HBarrierBig_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrier_F",0,0,0],
    ["Land_CncBarrier_stripes_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_CncWall_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_BarGate_F",0,0,0],
    ["Land_RoadBarrier_01_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_DragonsTeeth_01_4x2_old_F",0,0,0],
    ["Land_CzechHedgehog_01_new_F",0,0,0],
    ["Land_fort_bagfence_long",0,0,0],
    ["Land_fort_bagfence_corner",0,0,0],
    ["Land_fort_bagfence_round",0,0,0],
    ["Land_SandbagBarricade_01_F",0,0,0],
    ["Land_SandbagBarricade_01_half_F",0,0,0],
    ["Land_SandbagBarricade_01_hole_F",0,0,0],
    // desert
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_Fort_Watchtower_EP1",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    // woodland
//    ["Land_BagBunker_01_large_green_F",0,0,0],
//    ["Land_BagBunker_01_small_green_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
//    ["Land_BagFence_01_Round_green_F",0,0,0],
//    ["Land_BagFence_01_Long_green_F",0,0,0],
//    ["Land_BagFence_01_Short_green_F",0,0,0],
//    ["Land_BagFence_01_Corner_green_F",0,0,0],
//    ["Land_BagFence_01_End_green_F",0,0,0],
// 2- Edificios
    ["Jbad_Mil_Guardhouse",0,0,0],
    ["Jbad_Mil_House",0,0,0],
    ["Jbad_Mil_ControlTower",0,0,0],
    ["Jbad_Mil_Barracks",0,0,0],
    ["Land_Hlidac_Budka_EP1",0,0,0],
    ["Land_Bunker_01_Big_F",0,0,0],
    ["Land_Bunker_02_light_double_F",0,0,0],
    ["Land_Bunker_02_light_left_F",0,0,0],
    ["Land_Bunker_02_light_right_F",0,0,0],
    ["Land_Shed_Small_F",0,0,0],
    ["Land_Shed_Big_F",0,0,0],
    // 2.2 Prefabricados
    ["Land_Research_house_V1_F",0,0,0],
    ["Land_Cargo_House_V2_F",0,0,0],
    ["Land_Cargo_Patrol_V2_F",0,0,0],
    ["Land_CanvasCover_01_F",0,0,0],
    ["Land_tent_east",0,0,0],
    ["76n6ClamShell",0,0,0],                                // radar grande
    // Woodland
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V3_F",0,0,0],
    ["Land_MedicalTent_01_NATO_tropic_generic_outer_F",0,0,0],
    ["Land_Cargo20_military_green_F",0,0,0],
    ["Land_Barrack2",0,0,0],
    ["USMC_WarfareBVehicleServicePoint",0,0,0],             // cajon de sumis WD
    // Desert
    ["Land_Cargo_House_V3_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_MedicalTent_01_NATO_generic_outer_F",0,0,0],
    ["Land_Cargo20_sand_F",0,0,0],
    ["Land_Barrack2_EP1",0,0,0],
    ["US_WarfareBVehicleServicePoint_Base_EP1",0,0,0],      // cajon de sumis D
// 3- Señales/pads/luces
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_MedicalTent_01_floor_light_F",0,0,0],
    ["Land_Camping_Light_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Flag_UNO_F",0,0,0],
    ["ffaa_bandera_espa",0,0,0],
    ["Land_HelipadCircle_F",0,0,0], 
    ["Land_HelipadRescue_F",0,0,0], 
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_yellow_F",0,0,0],
// 4- Miscelaneos
    ["MetalBarrel_burning_F",0,0,0],
    ["Land_Campfire",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_04_F",0,0,0],
    ["Land_WaterTank_03_F",0,0,0],
    ["Land_Stretcher_01_olive_F",0,0,0],
    ["Land_WoodenTable_large_F",0,0,0],
    ["Land_WoodenCrate_01_F",0,0,0],
    ["Land_WoodenCrate_01_stack_x3_F",0,0,0],
    ["Land_WoodenCrate_01_stack_x5_F",0,0,0],
    ["Land_ToiletBox_F",0,0,0],
    ["Land_PaperBox_01_open_water_F",0,0,0],
    ["Land_WaterBottle_01_stack_F",0,0,0],
    ["Land_FoodSacks_01_large_brown_idap_F",0,0,0],
    ["Land_FoodSacks_01_cargo_brown_idap_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_Enoch_F",0,0,0],
    ["MapBoard_Tanoa_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["WaterPump_01_forest_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],     
    ["ACE_ConcertinaWireCoil",0,0,0],
    ["Land_Laptop_unfolded_F",0,0,0],
    ["Land_Laptop_Intel_01_F",0,0,0],
    ["CUP_vojenska_palanda",0,0,0],
    // Woodland
    ["CamoNet_BLUFOR_F",0,0,0],                 // camo net small
    ["CamoNet_BLUFOR_open_F",0,0,0],            // camo net medium
    ["CamoNet_BLUFOR_big_F",0,0,0],             // camo net big
    ["Land_PortableGenerator_01_F",0,0,0],
    ["Land_PortableDesk_01_olive_F",0,0,0],
//    ["PowerGenerator",0,0,0],
    // Desert
    ["Land_CamoNet_NATO_EP1",0,0,0],            // camo net small
    ["Land_CamoNetVar_NATO_EP1",0,0,0],         // camo net medium
    ["Land_CamoNetB_NATO_EP1",0,0,0],           // camo net medium
    ["Land_PortableGenerator_01_sand_F",0,0,0],
    ["Land_PortableDesk_01_sand_F",0,0,0],
    ["PowerGenerator_EP1",0,0,0],

    ["Land_ClutterCutter_large_F",0,0,0]
];

// TODO Se han dejado algunos de serie, comprobar cuales no hacen falta
support_vehicles = [
    // Serie de objetos LIB
    [Arsenal_typename,0,0,0],
    [Respawn_truck_typename,300,0,300],
    [FOB_box_typename,500,500,0],
    [FOB_truck_typename,500,500,100],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,300,300,300],
    [KP_liberation_air_vehicle_building,2000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    // cajas de municiones, descartables?
    ["ACE_medicalSupplyCrate_advanced",0,0,0],
//    ["ACE_Box_82mm_Mo_HE",50,40,0],
//    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
//    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",0,0,0],
    ["ACE_Track",0,0,0],
//    ["Box_NATO_AmmoVeh_F",0,154,0],
//    ["Box_East_AmmoVeh_F",0,115,0],  
//    ["Jbad_Mil_Repair_center_Big",0,0,0],
//    ["Land_MedicalTent_01_white_IDAP_open_F",0,0,0],
// HOSPITALES
    ["Land_Medevac_house_V1_F",300,0,0],
    ["Land_Medevac_HQ_V1_F",1000,0,0],
    ["USMC_WarfareBFieldhHospital",500,0,0],                            // grande W
    ["US_WarfareBFieldhHospital_Base_EP1",500,0,0],                     // grande D
    ["CDF_WarfareBFieldhHospital",200,0,0],                             // tienda W
    ["TK_WarfareBFieldhHospital_Base_EP1",200,0,0],                     // tienda D
//    ["JNS_Skycrane_Pod_Bench_BLU_Black",125,0,75],
//    ["JNS_Skycrane_Pod_Ammo_BLU_Black",125,150,75],
//    ["JNS_Skycrane_Pod_Medical_BLU_Black",125,0,75],
//    ["JNS_Skycrane_Pod_Repair_BLU_Black",325,0,75],
//    ["JNS_Skycrane_Pod_Transport_BLU_Black",250,0,75],
    ["B_Truck_01_transport_F",200,0,100],
    ["B_Truck_01_covered_F",200,0,100],
//    ["CUP_B_TowingTractor_NATO",50,0,25],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["B_Truck_01_Repair_F",400,0,100],                                  // HEMTT Repair
    ["B_Truck_01_fuel_F",100,0,400],                                    // HEMTT Fuel
    ["B_Truck_01_ammo_F",100,300,100],                                  // HEMTT Ammo
//    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",400,0,100],                  // M977A4 Repair
//    ["rhsusf_M978A4_BKIT_usarmy_wd",100,0,400],                         // M978A4 Fuel
//    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",100,300,100],                  // M977A4 Ammo
    ["B_Slingload_01_Repair_F",300,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",0,0,300],                                  // Huron Fuel
    ["B_Slingload_01_Ammo_F",0,300,0],                                   // Huron Ammo
    // FFAA Suply trucks
    ["ffaa_et_m250_carga_blin",150,0,100],
    ["ffaa_et_m250_carga_lona_blin",150,0,100],
    ["ffaa_et_m250_recuperacion_blin",150,0,100],
    ["ffaa_et_m250_municion_blin",150,300,100],
    ["ffaa_et_m250_combustible_blin",150,0,400],
    ["ffaa_et_m250_repara_municion_blin",450,0,100],
    ["ffaa_et_pegaso_carga",100,0,100],
    ["ffaa_et_pegaso_carga_lona",100,0,100],
    ["ffaa_et_pegaso_municion",100,300,100],
    ["ffaa_et_pegaso_combustible",100,0,400],
    ["ffaa_et_pegaso_repara_municion",400,0,100]
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
