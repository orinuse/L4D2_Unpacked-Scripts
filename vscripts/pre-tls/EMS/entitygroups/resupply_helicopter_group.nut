//-------------------------------------------------------
// Autogenerated from 'resupply_helicopter.vmf'
//-------------------------------------------------------
ResupplyHelicopter <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.chopper_crate,
			EntityGroup.SpawnTables.chopper_crate_light_1,
			EntityGroup.SpawnTables.chopper_crate_light_2,
			EntityGroup.SpawnTables.chopper_crate_explosion,
			EntityGroup.SpawnTables.resupply_drop_chopper,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.resupply_drop_chopper_train_path_6,
			EntityGroup.SpawnTables.resupply_drop_chopper_train_path_3,
			EntityGroup.SpawnTables.resupply_drop_chopper_sound,
			EntityGroup.SpawnTables.resupply_drop_chopper_train_path_4,
			EntityGroup.SpawnTables.resupply_drop_chopper_train_path_5,
			EntityGroup.SpawnTables.template_supply_drop,
			EntityGroup.SpawnTables.chopper_crate_template,
			EntityGroup.SpawnTables.resupply_drop_chopper_template,
			EntityGroup.SpawnTables.resupply_drop_chopper_start_relay,
			EntityGroup.SpawnTables.resupply_drop_chopper_train_path_2,
			EntityGroup.SpawnTables.resupply_drop_chopper_train_path_1,
			EntityGroup.SpawnTables.resupply_drop_chopper_script,
			EntityGroup.SpawnTables.resupply_drop_chopper_train_path_7,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			chopper_crate = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 90, 0 )
					body = "0"
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "3"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props_junk/wood_crate002a.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "256"
					targetname = "chopper_crate"
					origin = Vector( 7, 26, 42 )
					connections =
					{
						OnTakeDamage =
						{
							cmd1 = "chopper_crate_break_relayTrigger01"
						}
					}
				}
			}
			chopper_crate_template = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "0"
					targetname = "chopper_crate_template"
					Template01 = "chopper_crate"
					Template03 = "chopper_crate_motor"
					Template04 = "chopper_crate_light_1"
					Template05 = "chopper_crate_light_2"
					Template06 = "chopper_crate_resupply_maker"
					Template07 = "chopper_crate_break_relay"
					origin = Vector( 4, 24, 72 )
				}
			}
			chopper_crate_light_1 = 
			{
				SpawnInfo =
				{
					classname = "point_spotlight"
					angles = Vector( 75, 270, 90 )
					disablereceiveshadows = "0"
					disableX360 = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					HaloScale = "60"
					HDRColorScale = "0.7"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					parentname = "chopper_crate"
					renderamt = "255"
					rendercolor = "250 148 46"
					renderfx = "0"
					rendermode = "0"
					spawnflags = "3"
					spotlightlength = "500"
					spotlightwidth = "50"
					targetname = "chopper_crate_light_1"
					origin = Vector( 8, 2.00002, 60.982 )
				}
			}
			chopper_crate_light_2 = 
			{
				SpawnInfo =
				{
					classname = "point_spotlight"
					angles = Vector( 75, 90, -90 )
					disablereceiveshadows = "0"
					disableX360 = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					HaloScale = "60"
					HDRColorScale = "0.7"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					parentname = "chopper_crate"
					renderamt = "255"
					rendercolor = "250 148 46"
					renderfx = "0"
					rendermode = "0"
					spawnflags = "3"
					spotlightlength = "500"
					spotlightwidth = "50"
					targetname = "chopper_crate_light_2"
					origin = Vector( 8, 48, 60.982 )
				}
			}
			chopper_crate_motor = 
			{
				SpawnInfo =
				{
					classname = "phys_motor"
					attach1 = "chopper_crate"
					axis = Vector( -8, 30, 45 )
					inertiafactor = "1.0"
					spawnflags = "3"
					speed = "210"
					spinup = ".3"
					targetname = "chopper_crate_motor"
					origin = Vector( -8, 11, 45 )
				}
			}
			chopper_crate_explosion = 
			{
				SpawnInfo =
				{
					classname = "env_explosion"
					fireballsprite = "sprites/zerogxplode.spr"
					iMagnitude = "1"
					iRadiusOverride = "1"
					rendermode = "5"
					spawnflags = "3"
					targetname = "chopper_crate_explosion"
					origin = Vector( -1, 0, -34 )
				}
			}
			chopper_crate_break_relay = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "0"
					targetname = "chopper_crate_break_relay"
					origin = Vector( 23, 16, 72 )
					connections =
					{
						OnSpawn =
						{
							cmd1 = "chopper_crateSetHealth999901"
							cmd2 = "chopper_crate_break_relayTrigger31"
						}
						OnTrigger =
						{
							cmd1 = "chopper_crate_explosionExplode0-1"
							cmd2 = "chopper_crateBreak0.05-1"
							cmd3 = "chopper_crate_resupply_makerClearParent0-1"
							cmd4 = "!selfKill0-1"
							cmd5 = "chopper_crate_light_2Kill0.1-1"
							cmd6 = "chopper_crate_light_1Kill0.1-1"
							cmd7 = "chopper_crate_motorKill0-1"
							cmd8 = "chopper_crate_light_1ClearParent0-1"
							cmd9 = "chopper_crate_light_2ClearParent0-1"
							cmd10 = "chopper_crate_light_2Kill0.1-1"
							cmd11 = "chopper_crate_light_1Kill0.1-1"
							cmd12 = "chopper_crate_light_1LightOff0-1"
							cmd13 = "chopper_crate_light_2LightOff0-1"
							cmd14 = "chopper_crate_resupply_makerForceSpawn01"
							cmd15 = "chopper_crate_smokeplume_makerClearParent01"
							cmd16 = "chopper_crate_smokeplume_makerForceSpawn01"
							cmd17 = "smoke_plume_particlesStop901"
						}
					}
				}
			}
			item_spawn_drop_smoke_item = 
			{
				SpawnInfo =
				{
					classname = "weapon_first_aid_kit_spawn"
					angles = Vector( 90, 330, 0 )
					solid = "6"
					spawnflags = "3"
					targetname = "item_spawn_drop_smoke_item"
					origin = Vector( -3, 4, -32 )
				}
			}
			item_spawn_drop = 
			{
				SpawnInfo =
				{
					classname = "weapon_first_aid_kit_spawn"
					angles = Vector( 90, 30, 0 )
					solid = "6"
					spawnflags = "3"
					targetname = "item_spawn_drop"
					origin = Vector( -27, 7, -39 )
				}
			}
			item_spawn_drop1 = 
			{
				SpawnInfo =
				{
					classname = "weapon_rifle_m60_spawn"
					angles = Vector( -2.62572, 321.238, 71.8238 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( 3, 6, -43 )
				}
			}
			item_spawn_drop2 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "0"
					item16 = "2"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "1"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( 9, 11, -23 )
				}
			}
			template_supply_drop = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "0"
					targetname = "template_supply_drop"
					Template01 = "item_spawn_drop"
					Template02 = "chopper_crate_signal_smoke"
					Template03 = "chopper_crate_explosion"
					Template04 = "item_spawn_drop_smoke_item"
					Template05 = "trigger_stop_smoke"
					Template06 = "smoke_plume_particles"
					origin = Vector( 0, 0, -32 )
				}
			}
			item_spawn_drop3 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "1"
					item16 = "0"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "2"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( 22, -4, -46 )
				}
			}
			item_spawn_drop4 = 
			{
				SpawnInfo =
				{
					classname = "weapon_rifle_spawn"
					angles = Vector( 0, 0, 0 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( 1, -8.00001, -37 )
				}
			}
			item_spawn_drop5 = 
			{
				SpawnInfo =
				{
					classname = "weapon_shotgun_spas_spawn"
					angles = Vector( 0, 345, 0 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( -2, 15, -38 )
				}
			}
			item_spawn_drop6 = 
			{
				SpawnInfo =
				{
					classname = "weapon_spawn"
					angles = Vector( 0, 45, 0 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawn_without_director = "0"
					spawnflags = "3"
					targetname = "item_spawn_drop"
					weapon_selection = "any_sniper_rifle"
					origin = Vector( -24, -8, -40 )
				}
			}
			item_spawn_drop7 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "1"
					item16 = "2"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( -25, -10, -23 )
				}
			}
			item_spawn_drop8 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "0"
					item16 = "2"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( -9, -4, -23 )
				}
			}
			item_spawn_drop9 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "0"
					item16 = "0"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "1"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( 7, -4, -22 )
				}
			}
			item_spawn_drop10 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "0"
					item16 = "0"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "0"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( 17, 11, -38 )
				}
			}
			item_spawn_drop11 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "1"
					item16 = "2"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( -25, -2, -36 )
				}
			}
			item_spawn_drop12 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "0"
					item16 = "2"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					melee_weapon = "Any"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( -25, 11, -23 )
				}
			}
			item_spawn_drop13 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "0"
					item12 = "0"
					item13 = "0"
					item16 = "2"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "2"
					item4 = "2"
					item5 = "2"
					item6 = "0"
					item7 = "0"
					item8 = "1"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					origin = Vector( 24, 11, -22 )
				}
			}
			item_spawn_drop14 = 
			{
				SpawnInfo =
				{
					classname = "upgrade_spawn"
					laser_sight = "0"
					spawnflags = "1"
					targetname = "item_spawn_drop"
					upgradepack_explosive = "1"
					upgradepack_incendiary = "1"
					origin = Vector( 24, -9, -22 )
				}
			}
			resupply_drop_chopper = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					body = "0"
					DefaultAnim = "landed"
					disablereceiveshadows = "0"
					disableshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "3250"
					fademindist = "3050"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowstate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/hybridphysx/river_helicoptor.mdl"
					parentname = "resupply_drop_chopper_train"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "resupply_drop_chopper"
					updatechildren = "0"
					origin = Vector( -3169.18, 424.177, 77.001 )
				}
			}
			resupply_drop_chopper_train_path_1 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "resupply_drop_chopper_train_path_2"
					targetname = "resupply_drop_chopper_train_path_1"
					origin = Vector( -2988, 15.996, 225 )
				}
			}
			resupply_drop_chopper_train_path_2 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "resupply_drop_chopper_train_path_3"
					targetname = "resupply_drop_chopper_train_path_2"
					origin = Vector( -2368, 15.996, 225 )
				}
			}
			resupply_drop_chopper_train_path_3 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "resupply_drop_chopper_train_path_4"
					targetname = "resupply_drop_chopper_train_path_3"
					origin = Vector( -896, 15.996, 225 )
				}
			}
			resupply_drop_chopper_train_path_4 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					spawnflags = "0"
					target = "resupply_drop_chopper_train_path_5"
					targetname = "resupply_drop_chopper_train_path_4"
					origin = Vector( 0, 15.996, 225 )
					connections =
					{
						OnPass =
						{
							cmd1 = "chopper_crate_templateForceSpawn0-1"
						}
					}
				}
			}
			resupply_drop_chopper_train_path_5 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "resupply_drop_chopper_train_path_6"
					targetname = "resupply_drop_chopper_train_path_5"
					origin = Vector( 2672, 15.996, 225 )
				}
			}
			resupply_drop_chopper_train_path_6 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "resupply_drop_chopper_train_path_7"
					targetname = "resupply_drop_chopper_train_path_6"
					origin = Vector( 3296, 15.996, 225 )
					connections =
					{
						OnPass =
						{
							cmd1 = "!activatorKill0.05-1"
							cmd2 = "resupply_drop_chopper_scriptRunScriptCodeg_RoundState.ResupplyHelicopter.HelicopterEnd()0-1"
						}
					}
				}
			}
			resupply_drop_chopper_start_relay = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "0"
					targetname = "resupply_drop_chopper_start_relay"
					origin = Vector( -2988, 15.996, 261 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "resupply_drop_chopper_templateForceSpawn0-1"
							cmd2 = "resupply_drop_chopper_trainStartForward0.2-1"
							cmd3 = "resupply_drop_chopper_soundPlaySound0-1"
						}
					}
				}
			}
			resupply_drop_chopper_template = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "2"
					targetname = "resupply_drop_chopper_template"
					Template01 = "resupply_drop_chopper"
					Template02 = "resupply_drop_chopper_train"
					origin = Vector( -2988, 15.996, 279 )
				}
			}
			resupply_drop_chopper_sound = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "c2.outro.chopperleave"
					pitch = "100"
					pitchstart = "100"
					radius = "4779"
					spawnflags = "48"
					targetname = "resupply_drop_chopper_sound"
					origin = Vector( -2988, 15.996, 243.75 )
				}
			}
			resupply_drop_chopper_train_path_7 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					targetname = "resupply_drop_chopper_train_path_7"
					origin = Vector( 3344, 15.996, 225 )
				}
			}
			resupply_drop_chopper_train = 
			{
				SpawnInfo =
				{
					classname = "func_tracktrain"
					bank = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					dmg = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					height = "4"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					MoveSoundMaxPitch = "200"
					MoveSoundMaxTime = "0"
					MoveSoundMinPitch = "60"
					MoveSoundMinTime = "0"
					orientationtype = "1"
					origin = Vector( -2988, 16, 200 )
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					spawnflags = "523"
					speed = "0"
					startspeed = "500"
					target = "resupply_drop_chopper_train_path_1"
					targetname = "resupply_drop_chopper_train"
					velocitytype = "0"
					volume = "10"
					wheels = "50"
				}
			}
			resupply_drop_chopper_script = 
			{
				SpawnInfo =
				{
					classname = "logic_script"
					Group00 = "resupply_drop_chopper_start_relay"
					targetname = "resupply_drop_chopper_script"
					vscripts = "resupply_helicopter"
					origin = Vector( -2977.49, 59.996, 145 )
				}
			}
			chopper_crate_resupply_maker = 
			{
				SpawnInfo =
				{
					classname = "env_entity_maker"
					angles = Vector( 0, 0, 0 )
					EntityTemplate = "template_supply_drop"
					parentname = "chopper_crate"
					PostSpawnDirection = "0 0 0"
					PostSpawnDirectionVariance = "0"
					PostSpawnInheritAngles = "0"
					PostSpawnSpeed = "0"
					spawnflags = "0"
					targetname = "chopper_crate_resupply_maker"
					origin = Vector( 7, 26, 42 )
					connections =
					{
						OnEntitySpawned =
						{
							cmd1 = "!selfKill0-1"
						}
					}
				}
			}
			chopper_crate_signal_smoke = 
			{
				SpawnInfo =
				{
					classname = "env_smoketrail"
					emittime = "90"
					endcolor = "255 0 0"
					endsize = "50"
					firesprite = "sprites/firetrail.spr"
					lifetime = "6.0"
					maxdirectedspeed = "0"
					maxspeed = "45"
					mindirectedspeed = "0"
					minspeed = "20"
					opacity = "0.75"
					smokesprite = "sprites/whitepuff.spr"
					spawnradius = "20"
					spawnrate = "40"
					startcolor = "255 128 64"
					startsize = "15"
					targetname = "chopper_crate_signal_smoke"
					origin = Vector( 0, 0, -32 )
				}
			}
			trigger_stop_smoke = 
			{
				SpawnInfo =
				{
					classname = "script_trigger_once"
					origin = Vector( 0, 16, -16 )
					parentname = "chopper_crate_signal_smoke"
					spawnflags = "19"
					targetname = "trigger_stop_smoke"
					extent = Vector( 64, 64, 32 )
					connections =
					{
						OnStartTouch =
						{
							cmd1 = "chopper_crate_signal_smokeKill0-1"
							cmd2 = "smoke_plume_particlesStop0-1"
						}
					}
				}
			}
			smoke_plume_particles = 
			{
				SpawnInfo =
				{
					classname = "info_particle_system"
					angles = Vector( -90, 0, 0 )
					cpoint1_parent = "0"
					cpoint2_parent = "0"
					cpoint3_parent = "0"
					cpoint4_parent = "0"
					cpoint5_parent = "0"
					cpoint6_parent = "0"
					cpoint7_parent = "0"
					effect_name = "burning_wood_01_smoke"
					render_in_front = "0"
					start_active = "1"
					targetname = "smoke_plume_particles"
					origin = Vector( 0, 0, -31 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // ResupplyHelicopter

RegisterEntityGroup( "ResupplyHelicopter", ResupplyHelicopter )