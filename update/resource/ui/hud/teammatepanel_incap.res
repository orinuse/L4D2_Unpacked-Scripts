"Resource/UI/HUD/TeammatePanel_Incap.res"
{
	"BackgroundImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"BackgroundImage"
		"xpos"			"-2"
		"ypos"			"2"
		"wide"			"160"
		"tall"			"80"
		"zpos"			"-1"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
	}

	"Voice"
	{
		"ControlName"	"TeamDisplayVoicePanel"
		"fieldName"		"Voice"
		"xpos"			"21"
		"ypos"			"0"
		"wide"			"16"
		"tall"			"16"
		"visible"		"0"
		"enabled"		"1"
		"zpos"			"3"
		"voice_icon"	"voice_player"
	}
			
	"Health"
	{
		"ControlName"	"HealthPanel"
		"fieldName"		"Health"
		"xpos"			"11"
		"ypos"			"42"
		"wide"			"121"
		"tall"			"12"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"1"
		"textAlignment"	"east"
		
		"new_material_style"	"1"		
		"healthbar_image_high"			"vgui/hud/healthbar_withglow_green"
		"healthbar_image_medium"		"vgui/hud/healthbar_withglow_orange"
		"healthbar_image_low"			"vgui/hud/healthbar_withglow_red"
		"healthbar_image_grey"			"vgui/hud/healthbar_withglow_white"
		
		"healthbar_image_high_ticks"	"vgui/hud/healthbar_ticks_withglow_green"
		"healthbar_image_medium_ticks"	"vgui/hud/healthbar_ticks_withglow_orange"
		"healthbar_image_low_ticks"		"vgui/hud/healthbar_ticks_withglow_red"
		"healthbar_image_grey_ticks"	"vgui/hud/healthbar_ticks_withglow_white"		
	}
	
// from Rayman's Team Health Counter - temporarily commented out (CTRL+Q to undo)
	// "HealthIcon"
	// {
		// "ControlName"	"Label"
		// "fieldName"		"HealthIcon"
		// "xpos"			"97" //40 current 97^
		// "ypos"			"21" //21 current 18^
		// "wide"			"70"
		// "tall"			"26"
		// "visible"		"1"
		// "enabled"		"1"
		// "labelText"		","
		// "textAlignment"	"west"
		// "font"			"L4D_Icons"
		// "zpos"			"2"
	// }

	// "HealthNumber"
	// {
		// "ControlName"	"Label"
		// "fieldName"		"HealthNumber"
		// "xpos"			"108" //51 current 108^
		// "ypos"			"22" //21 current 18^ 19^^
		// "wide"			"70"
		// "tall"			"26"
		// "visible"		"1"
		// "enabled"		"1"
		// "labelText"		"%HealthNumber%"
		// "textAlignment"	"west"
		// "font"			"HUDHealth"
		// "zpos"			"2"
	// }

	"Name"
	{
		"ControlName"	"Label"
		"fieldName"		"Name"
		"xpos"			"11"
		"ypos"			"56"
		"wide"			"122"
		"tall"			"12"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"	"west"
		"font"			"PlayerDisplayName"
		"zpos"			"3"
		"fgcolor_override" "White"
	}

	"Status"
	{
		"ControlName"	"Label"
		"fieldName"		"Status"
		"xpos"			"108"
		"ypos"			"18"
		"wide"			"70"
		"tall"			"12"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"	"west" //east
		"font"			"PlayerDisplayName"
		"zpos"			"3"
		"fgcolor_override" "White"
	}
}