//
//  TreeNode.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/15/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TreeNode : NSObject
@property (nonatomic, assign) NSInteger val;
@property (nonatomic, strong) TreeNode *left;
@property (nonatomic, strong) TreeNode *right;
+ (nullable instancetype)rootNodeWithArray:(NSArray *)array;
+ (nullable instancetype)nodeWithObject:(id)object;
+ (instancetype)nodeWithVal:(NSInteger)val;
@end

NS_ASSUME_NONNULL_END
