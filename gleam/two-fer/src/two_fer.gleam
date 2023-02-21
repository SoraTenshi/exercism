import gleam/option.{Option, Some}

pub fn two_fer(name: Option(String)) -> String {
  "One for " <> case name {
    Some(n) -> n
    _ -> "you"
  } <> ", one for me."
}
