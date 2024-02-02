const std = @import("std");
pub const ChessboardError = error{
    IndexOutOfBounds,
};

pub fn square(index: isize) ChessboardError!u64 {
    if (index > 64 or index < 1) {
        return ChessboardError.IndexOutOfBounds;
    }

    return std.math.powi(u64, 2, @as(u64, @intCast(index)) - 1) catch unreachable;
}

pub fn total() u64 {
    return std.math.maxInt(u64);
}
