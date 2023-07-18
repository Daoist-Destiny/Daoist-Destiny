extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	var file =File.new()
	file.open("../data/base.json",File.READ)
	var jsonString=file.get_as_text()
	file.close()
	jsonData = JSONParser.new().parse(jsonString)
	text = jsonData
	self.bbcode_enabled=true
	var gameName="归道"
	#text="[color=red][b]Hello[/b][/color] [color=green][i]world[/i][/color]!"
	pass # Replace with function body.

 

	text= text+"\n玩家您好\n你正在打开的游戏\n"+ gameName+ "\n是一款模拟tui的游戏\n\ntui是一种古早的显示模式\n不一定适合所有玩家\n不过只要你习惯了\n就会发现很适合摸鱼\n\n目前是早期开发状态\n充斥着大量bug和空白\n无论您通过哪种方式接触到了这款游戏\n请在遇到异常时将异常反馈给开发者\n\n暂时只开通了邮件渠道\n请发送邮件给如下地址\ndaoist-destiny@fushisanlang.cn\n\n感谢您的支持\n祝您游戏愉快"
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
