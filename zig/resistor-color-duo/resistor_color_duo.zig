const std = @import("std");
pub const ColorBand = enum(u8) {
    black = 0,
    brown = 1,
    red = 2,
    orange = 3,
    yellow = 4,
    green = 5,
    blue = 6,
    violet = 7,
    grey = 8,
    white = 9,
};

pub fn colorCode(colors: []const ColorBand) anyerror!isize {
    var buf = [_]u8{undefined} ** 2;
    const ascii_adder: u8 = 48;

    for (buf, 0..) |*buffer, i| {
        buffer.* = @intFromEnum(colors[i]) + ascii_adder;
    }

    return std.fmt.parseInt(isize, &buf, 0);
}
