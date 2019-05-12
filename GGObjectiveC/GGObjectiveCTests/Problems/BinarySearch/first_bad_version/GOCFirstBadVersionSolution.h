//
//  GOCFirstBadVersionSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/11/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GOCFirstBadVersionSolutionDelegate <NSObject>
- (BOOL)isBadVersion:(NSInteger)version;
@end

@interface GOCFirstBadVersionSolution : NSObject
@property (nonatomic, weak) id<GOCFirstBadVersionSolutionDelegate> delegate;
- (NSInteger)firstBadVersion:(NSInteger)n;
@end

NS_ASSUME_NONNULL_END
