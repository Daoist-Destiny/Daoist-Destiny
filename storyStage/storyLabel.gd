extends Label
var disciple_name = "符十三郎"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	self.add_theme_color_override("font_color",Color("ANTIQUE_WHITE"))
	text= "\n嘉德十八年，景帝痴迷长生之术，听信国师何继谗言。\n在全国抓捕三千名童男童女准备炼制不老丹。\n此令一出，举国哗然。\n又恰逢黄河决堤，南方大旱。\n民间传言景帝自断气数，董家江山命不久矣。\n\n时任冀州将军那河离主张清君侧斩妖道起兵造反。\n只用了十余日便兵临京畿。\n奈何妖道何继在城门外设下五行三刹阵，将冀州军硬生生困在城下七天，军心大乱。\n\n三才宗推算出凉朝气数已尽，便派出当代行走刘不空下山助那河离铲除妖道。\n刘不空道法高深，轻松地破了何继的大阵，并将何继斩于阵前。\n之后又使用搬山填海之术治理了黄河的水患和南方的旱灾，堪称神迹。\n\n翼州将军那河离顺势登基，建立魏朝，欲招刘不空为国师，被刘不空婉拒。\n就在刘不空回宗门复命的途中，于泰山脚下遇到一名弃婴。\n这婴儿双目闪烁，颅顶放光，乃是万中无一的修真奇才。\n刘不空便将其带回门中，取名"+disciple_name +"，收为亲传弟子。"
 
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
