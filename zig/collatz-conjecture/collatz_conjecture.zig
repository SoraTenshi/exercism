pub const ComputationError = error{
    IllegalArgument,
};

pub fn steps(number: isize) anyerror!usize {
    if (number < 1) {
        return ComputationError.IllegalArgument;
    }

    var step: usize = 0;
    var new_number: isize = number;

    while (new_number != 1) : (step += 1) {
        if (@mod(new_number, 2) == 0) {
            new_number = @divFloor(new_number, 2);
        } else {
            new_number = 3 * new_number + 1;
        }
    }

    return step;
}
