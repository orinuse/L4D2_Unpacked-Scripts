"Resource/UI/QuickMatchFlyout.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"180" [$ENGLISH]
		"wide"					"270" [!$ENGLISH]
		"tall"					"45"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"BtnOfficialOnly"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnOfficialOnly"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnAnyServer"
		"navDown"				"BtnAnyServer"
		"labelText"				"#L4D360UI_OfficialOnly"
		"style"					"FlyoutMenuButton"
		"command"				"QuickMatchServer_official"
	}
	
	"BtnAnyServer"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnAnyServer"
		"xpos"					"0"
		"ypos"					"20"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnOfficialOnly"
		"navDown"				"BtnOfficialOnly"
		"labelText"				"#L4D360UI_AllServers"
		"style"					"FlyoutMenuButton"
		"command"				"QuickMatchServer_any"
	}
}