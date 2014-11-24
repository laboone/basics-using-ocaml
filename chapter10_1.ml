(* 目的：あらかじめ昇順にソートされているリストlstと整数nを受け取り、nを昇順となる位置に挿入したリストを返す *)
let rec insert_to_sorted_list lst n = match lst with
	[] -> [n]
	| first :: rest -> if n <= first then n :: first :: rest
					 else first :: insert_to_sorted_list rest n


(* テスト *)
let test1 = insert_to_sorted_list [] 1 = [1]
let test2 = insert_to_sorted_list [1;2;4;5] 3 = [1;2;3;4;5]
let test3 = insert_to_sorted_list [1] 3 = [1;3]
let test4 = insert_to_sorted_list [1] 0 = [0;1]


