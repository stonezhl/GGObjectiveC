//
//  GOCTriangleSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 6/8/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GOCTriangleSolution : NSObject
- (NSInteger)divideAndConquerMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle;
- (NSInteger)dynamicProgrammingMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle;
- (NSInteger)bottomUpMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle;
- (NSInteger)topDownMinimumTotal:(NSArray<NSArray<NSNumber *> *> *)triangle;
@end

NS_ASSUME_NONNULL_END
