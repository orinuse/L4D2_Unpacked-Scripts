"Resource/UI/InGameOptionsFlyoutVersusSurvival.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"156"
		"tall"					"105"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"BtnReturnToLobby"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnReturnToLobby"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnChangeAllTalk"
		"navDown"				"BtnRestartScenario"
		"tooltiptext"			"#L4D360UI_ReturnToLobby_Tip"
		"labelText"				"#L4D360UI_ReturnToLobby"
		"style"					"FlyoutMenuButton"
		"command"				"ReturnToLobby"
	}
			
	"BtnRestartScenario"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnRestartScenario"
		"xpos"					"0"
		"ypos"					"20"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnReturnToLobby"
		"navDown"				"BtnChangeChapter"
		"tooltiptext"			"#L4D360UI_RestartChapter_Tip"
		"labelText"				"#L4D360UI_RestartChapter"
		"style"					"FlyoutMenuButton"
		"command"				"RestartScenario"
	}
	
	"BtnChangeChapter"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnChangeChapter"
		"xpos"					"0"
		"ypos"					"40"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnRestartScenario"
		"navDown"				"BtnBootPlayer"
		"tooltiptext"			"#L4D360UI_ChangeChapter_Tip"
		"labelText"				"#L4D360UI_ChangeChapter"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeChapter"
	}
	
	"BtnBootPlayer"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBootPlayer"
		"xpos"					"0"
		"ypos"					"60"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnChangeChapter"
		"navDown"				"BtnChangeAllTalk"
		"tooltiptext"			"#L4D360UI_BootPlayer_Tip"
		"labelText"				"#L4D360UI_BootPlayer"
		"style"					"FlyoutMenuButton"
		"command"				"BootPlayer"
	}
	
	"BtnChangeAllTalk"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnChangeAllTalk"
		"xpos"					"0"
		"ypos"					"80"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnBootPlayer"
		"navDown"				"BtnReturnToLobby"
		"tooltiptext"			"#L4D360UI_ChangeAllTalk_Tip"
		"labelText"				"#L4D360UI_ChangeAllTalk"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeAllTalk"
		"EnableCondition"		"Never" [$DEMO]
	}		
}