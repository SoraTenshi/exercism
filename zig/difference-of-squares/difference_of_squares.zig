pub fn squareOfSum(number: isize) isize {
    var result: isize = 0;
    var n: isize = 0;
    while (n <= number) : (n += 1) {
        result += n;
    }

    return result * result;
}

pub fn sumOfSquares(number: isize) isize {
    var result: isize = 0;
    var n: isize = 0;
    while (n <= number) : (n += 1) {
        result += n * n;
    }

    return result;
}

pub fn differenceOfSquares(number: isize) isize {
    const squared_sum = squareOfSum(number);
    const sum_squares = sumOfSquares(number);

    return @max(sum_squares - squared_sum, squared_sum - sum_squares);
}
