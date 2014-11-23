(* 目的:受け取ったlstの要素それぞれの先頭にnをくっつける *)
let rec add_to_each n lst = match lst with
	  [] -> []
	| first :: rest ->  (n :: first) :: add_to_each n rest  



(* テスト *)
let test1 = add_to_each 1 []=[]
let test2 = add_to_each 1 [[2]]=[[1;2]]
let test3 = add_to_each 1 [[2]; [2;3]] = [[1;2]; [1;2;3]]
let test4 = add_to_each 1 [[2]; [2;3]; [2;3;4]] = [[1;2]; [1;2;3]; [1;2;3;4]]


