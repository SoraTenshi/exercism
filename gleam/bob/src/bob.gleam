import gleam/string.{trim, ends_with, uppercase, lowercase, is_empty}

pub fn hey(remark: String) -> String {
  let empty = trim(remark) 
    |> is_empty()
  let is_question = trim(remark) 
    |> ends_with("?")
  let is_yelling = remark == uppercase(remark) && remark != lowercase(remark)

  case is_yelling, is_question, empty {
    _, _, True  -> "Fine. Be that way!"
    False, True, False -> "Sure."
    True, False, False -> "Whoa, chill out!"
    True, True, False -> "Calm down, I know what I'm doing!"
    _, _, _ -> "Whatever."
  }
}
