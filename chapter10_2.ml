(* 目的 学生リストlstのうち各成績の人数を集計する *)
(* shukei : akusei_t list -> int * int * int * int *)

type  gakusei_t = { namae : string; tensuu : int; seiseki : string };;

let rec shukei lst = match lst with 
   [] -> (0,0,0,0) 
 | {namae = n; tensuu =  t; seiseki = s} :: rest ->
    let shukei_rest = shukei rest in 
    match shukei_rest with 
     (a, b, c, d) -> if s = "A" then ( a+1, b,c,d)
                     else if s = "B" then (a, b+1, c, d)
                     else if s = "C" then (a, b, c+1, d)
                     else (a, b, c, d+1)



