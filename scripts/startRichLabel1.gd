extends RichTextLabel
var alignText = preload( "res://tools/alignText.gd" ).new()
var sqliteCon = preload("res://tools/sqliteCon.gd").new()
var dbPath := "res://data/dao.db"
func _ready():
	self.bbcode_enabled = true

	var gameStartString="[color=ANTIQUE_WHITE]\n玩家您好\n你正在打开的游戏\n[/color]"
	var gameStartString2=" [color=ANTIQUE_WHITE]目前仍是早期开发状态\n充斥着大量bug和空白\n\n无论您通过哪种方式接触到了这款游戏\n请在遇到异常时将异常反馈给开发者\n\n暂时只开通了邮件渠道\n请发送邮件给如下地址\ndaoist-destiny@fushisanlang.cn\n\n感谢您的支持\n祝您游戏愉快[/color]"
	

	var gameName=sqliteCon.load_table_recs(dbPath,"select confValue from conf where confKey = 'gameName';")[0]["confValue"]
	text = gameStartString + "[color=red]"  + gameName + "\n[/color]" + gameStartString2
	text = alignText.alignText(text)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
# 向指定数据表追加新的记录
