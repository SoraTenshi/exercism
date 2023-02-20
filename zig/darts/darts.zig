const math = @import("std").math;

pub const Coordinate = struct {
    // This struct, as well as its fields and methods, needs to be implemented.
    x: f32,
    y: f32,

    pub fn init(x_coord: f32, y_coord: f32) Coordinate {
        return Coordinate{
            .x = x_coord,
            .y = y_coord,
        };
    }

    pub fn score(self: Coordinate) isize {
        const out = 10.0;
        const outer = 5.0;
        const middle = 1.0;

        const vec: f32 = math.sqrt(self.x * self.x + self.y * self.y);

        // @compileLog("test:", pos);
        if (vec > out) {
            return 0;
        } else if (vec > outer) {
            return 1;
        } else if (vec > middle) {
            return 5;
        } else {
            return 10;
        }
    }
};
