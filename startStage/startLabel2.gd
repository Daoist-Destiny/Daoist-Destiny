extends Label
var gameName = "归道"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_theme_color_override("font_color",Color("ANTIQUE_WHITE"))

	text= '点击"回车键"进入游戏'
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass	
