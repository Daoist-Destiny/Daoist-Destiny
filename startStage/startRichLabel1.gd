extends RichTextLabel
var sqllite = preload("res://addons/godot-sqlite/godot-sqlite.gd")# 导入和引用

var db

var dbPath := "res://data/dao.db"


# Called when the node enters the scene tree for the first time.
func _ready():
	var gameName=load_table_recs(dbPath,"select confValue from conf where confKey = 'gameName';")[0]["confValue"]
	text= text+"\n玩家您好\n你正在打开的游戏\n"+ gameName+ "\n是一款模拟tui的游戏\n\ntui是一种古早的显示模式\n不一定适合所有玩家\n不过只要你习惯了\n就会发现很适合摸鱼\n\n目前是早期开发状态\n充斥着大量bug和空白\n无论您通过哪种方式接触到了这款游戏\n请在遇到异常时将异常反馈给开发者\n\n暂时只开通了邮件渠道\n请发送邮件给如下地址\ndaoist-destiny@fushisanlang.cn\n\n感谢您的支持\n祝您游戏愉快"
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
# 向指定数据表追加新的记录
func append_rec(db_path:String,table_name:String,rec:Dictionary):
	var db = SQLite.new() # 创建实际的数据库对象db
	db.path = db_path      # 指定数据库文件
	# 实际操作
	db.open_db()
	var success = db.insert_row(table_name,rec)
	if success:
		print("数据插入成功")
	db.close_db()
func load_table_recs(dbPath:String,sqlString:String) -> Array:
	var results = []
	var db = SQLite.new() # 创建实际的数据库对象db
	db.path = dbPath      # 指定数据库文件
	# 实际操作
	db.open_db()
	db.query(sqlString)
	results = db.query_result
	db.close_db()
	return results
	
