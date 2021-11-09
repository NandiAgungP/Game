extends Node2D

var point = 0

func _ready():
	var kump_coin
	kump_coin = $coins.get_children()
	$GUI.UpdatePoint(point)
	
#
#	for i in range(0, kump_coin.size()):
#		print(kump_coin[i].name)

	for coin in kump_coin :
		coin.connect("coin_keambil",self , "_on_TambahPoint")
		print(coin.name)
		
		var kump_musuh
		kump_musuh = $KumpulanMusuh.get_children()
		
		for musuh in kump_musuh:
			musuh.connect("player_hit" , self , "_on_player_hit")
	pass
	
func _on_player_hit(damage , enemy_pos):
	$Player._get_hit(damage, enemy_pos);
#	$Player._set_lives($Player._get_lives()-10)
#	print($Player._get_lives())



func _on_TambahPoint(p):
	point += p
	$GUI.UpdatePoint(point)
	print(point)
