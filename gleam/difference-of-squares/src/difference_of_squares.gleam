import gleam/list as l

pub fn square_of_sum(n: Int) -> Int {
  l.range(1, n)
    |> l.fold(0, fn(l, r) { l + r })
    |> fn(last) { last * last }
}

pub fn sum_of_squares(n: Int) -> Int {
  l.range(1, n)
    |> l.map(fn(x) { x * x })
    |> l.fold(0, fn(l, r) { l + r })
}

pub fn difference(n: Int) -> Int {
  let abs = fn(x: Int) -> Int {
    case x {
      x if x < 0 -> 0 - x
      _ -> x
    }
  };

  abs(square_of_sum(n) - sum_of_squares(n))
}
