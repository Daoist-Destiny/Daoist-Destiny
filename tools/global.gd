extends Object

# 定义单例对象
var _instance = null

# 获取单例对象的静态方法
func instance():
	if _instance == null:
		_instance = Globe.new()
	return _instance

# 定义欢迎界面的文本内容
var welcomeMessage = "欢迎来到我的游戏！\n祝您玩得愉快！"
