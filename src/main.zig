const std = @import("std");

const Signal = struct {
    demand: i32,
    capacity: i32,
    latency: i32,
    risk: i32,
    weight: i32,
};

const threshold: i32 = 150;
const risk_penalty: i32 = 7;
const latency_penalty: i32 = 2;
const weight_bonus: i32 = 5;

fn score(signal: Signal) i32 {
    return signal.demand * 2 + signal.capacity + signal.weight * weight_bonus
        - signal.latency * latency_penalty - signal.risk * risk_penalty;
}

fn classify(signal: Signal) []const u8 {
    return if (score(signal) >= threshold) "accept" else "review";
}

test "fixture decisions" {
    const signal_case_1 = Signal{ .demand = 54, .capacity = 106, .latency = 14, .risk = 19, .weight = 8 };
    try std.testing.expectEqual(@as(i32, 93), score(signal_case_1));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_1), "review"));
    const signal_case_2 = Signal{ .demand = 68, .capacity = 78, .latency = 14, .risk = 21, .weight = 5 };
    try std.testing.expectEqual(@as(i32, 64), score(signal_case_2));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_2), "review"));
    const signal_case_3 = Signal{ .demand = 74, .capacity = 74, .latency = 9, .risk = 5, .weight = 5 };
    try std.testing.expectEqual(@as(i32, 194), score(signal_case_3));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_3), "accept"));
}
