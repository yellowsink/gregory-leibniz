const std = @import("std");

const precision = 10e-5;

pub fn main() anyerror!void {
    var currentValue: f64 = 1;
    var lastValue: f64 = 2;

    var terms: u32 = 0;

    while (std.math.fabs(currentValue - lastValue) >= precision) {
        lastValue = currentValue;
        currentValue = 0;
        terms += 1;

        var i: u32 = 0;
        while (i < terms) : (i += 1) {
            var term = 4 / (@intToFloat(f32, i) * 2 + 1);

            if (i % 2 != 0)
                term *= -1;
            
            currentValue += term;
        }
    }

    std.log.info("{}\nconverged after {} terms of infinite series", .{currentValue, terms});
}