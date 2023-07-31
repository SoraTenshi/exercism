let rec accumulate acc v func =
    if acc = 0 then v
    else accumulate (acc - 1) (func v acc) func

let square_of_sum n = 
    let sum_up acc v = acc + v in
    let s = accumulate n 0 sum_up in
    s * s

let sum_of_squares n =
    let square_and_add acc v = acc + (v * v) in
    accumulate n 0 square_and_add

let difference_of_squares n =
    square_of_sum n - sum_of_squares n
