//
//  GOCFirstBadVersionSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/11/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCFirstBadVersionSolution.h"

@implementation GOCFirstBadVersionSolution

- (BOOL)isBadVersion:(NSInteger)version {
    if ([self.delegate respondsToSelector:@selector(isBadVersion:)]) {
        return [self.delegate isBadVersion:version];
    }
    return NO;
}

- (NSInteger)firstBadVersion:(NSInteger)n {
    NSInteger left = 1;
    NSInteger right = n;
    while (left < right) {
        NSInteger mid = left + (right - left) / 2;
        if ([self isBadVersion:mid]) {
            right = mid;
        } else {
            left = mid + 1;
        }
    }
    return left;
}

@end

