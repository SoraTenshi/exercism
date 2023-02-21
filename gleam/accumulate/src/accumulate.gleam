pub fn accumulate(list: List(a), fun: fn(a) -> b) -> List(b) {
  case list {
    [] -> []
    [single] -> [fun(single)]
    [start, ..end] -> [fun(start), ..accumulate(end, fun)]
  }
}
