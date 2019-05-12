//
//  ListNode.h
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListNode : NSObject
@property (nonatomic, assign) NSInteger val;
@property (nonatomic, strong) ListNode *next;
+ (nullable instancetype)headNodeWithArray:(NSArray<NSNumber *> *)array;
+ (instancetype)nodeWithVal:(NSInteger)val;
+ (NSArray<NSNumber *> *)arrayFromHeadNode:(ListNode *)head;
@end

NS_ASSUME_NONNULL_END
