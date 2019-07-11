//
//  ListNode.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

+ (instancetype)headNodeWithArray:(NSArray<NSNumber *> *)array {
    ListNode *dummy = [ListNode nodeWithVal:NSIntegerMin];
    ListNode *tail = dummy;
    for (NSNumber *item in array) {
        tail.next = [ListNode nodeWithVal:item.integerValue];
        tail = tail.next;
    }
    return dummy.next;
}

+ (instancetype)nodeWithVal:(NSInteger)val {
    return [[ListNode alloc] initWithVal:val];
}

+ (NSArray<NSNumber *> *)arrayFromHeadNode:(ListNode *)head {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    ListNode *cur = head;
    while (cur) {
        [array addObject:@(cur.val)];
        cur = cur.next;
    }
    return [array copy];
}

- (instancetype)initWithVal:(NSInteger)val {
    self = [super init];
    if (self) {
        _val = val;
    }
    return self;
}

@end
