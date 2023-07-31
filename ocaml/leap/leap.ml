let leap_year yr = match (yr mod 4, yr mod 100, yr mod 400) with
    | (0, 0, 0) -> true
    | (0, 0, _) -> false
    | (0, _, _) -> true
    | _ -> false