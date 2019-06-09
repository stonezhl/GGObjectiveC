//
//  GOCClimbingStairsSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/9/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCClimbingStairsSolution.h"

@implementation GOCClimbingStairsSolution

- (NSInteger)climbStairs:(NSInteger)n {
    NSMutableDictionary<NSNumber *, NSNumber *> *dp = [NSMutableDictionary dictionary];
    dp[@(0)] = @(1);
    dp[@(1)] = @(1);
    for (NSInteger i = 2; i <= n; i++) {
        dp[@(i)] = @(dp[@(i - 1)].integerValue + dp[@(i - 2)].integerValue);
    }
    return dp[@(n)].integerValue;
}

@end
