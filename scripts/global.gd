extends Node

var VY = 0
var VX = 0
var X = 0
var Y = 0
var PlayerMovmentEnabled = true
var Debug = false

var Desired_X = 0
var Desired_Y = 0

var TextRequest = false
var TextRequested = ""
var TextTime = 0
var RequestFufilled = false
var buttons = 0
var button1value = ""
var button2value = ""
var button3value = ""
var button4value = ""
var ButtonPressed = 0

func Dialog(TextWanted, AnimationTime, AmountOfButtons=0, Button1Value="", Button2Value="", Button3Value="", Button4Value=""):
	TextRequest = true
	TextRequested = TextWanted
	TextTime = AnimationTime
	RequestFufilled = false
	buttons = AmountOfButtons
	button1value = Button1Value
	button2value = Button2Value		
	button3value = Button3Value
	button4value = Button4Value
	
	
