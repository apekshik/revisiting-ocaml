(* A re-implementation of fold_left *)
let rec foldL f acc lst = 
  match lst with 
    | [] -> acc 
    | x :: xs -> foldL f (f acc x) xs 
   
(* A re-implementation of fold_right *)
let rec foldR f lst acc =
  match lst with 
    | [] -> acc 
    | x :: xs -> f x (foldR f xs acc)