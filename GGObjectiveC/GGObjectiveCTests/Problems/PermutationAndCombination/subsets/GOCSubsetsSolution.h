//
//  GOCSubsetsSolution.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GOCSubsetsSolution : NSObject
- (NSArray<NSArray<NSNumber *> *> *)subsets:(NSArray<NSNumber *> *)nums;
@end

NS_ASSUME_NONNULL_END
