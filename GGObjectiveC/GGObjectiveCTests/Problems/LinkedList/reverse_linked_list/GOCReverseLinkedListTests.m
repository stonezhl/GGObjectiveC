//
//  GOCReverseLinkedListTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCReverseLinkedListSolution.h"
#import "ListNode.h"

// https://leetcode.com/problems/reverse-linked-list/

@interface GOCReverseLinkedListTests : XCTestCase

@end

@implementation GOCReverseLinkedListTests

- (void)test_reverseLinkedList_1 {
    NSArray<NSNumber *> *array = @[@1, @2, @3, @4, @5];
    ListNode *head = [ListNode headNodeWithArray:array];
    GOCReverseLinkedListSolution *solution = [[GOCReverseLinkedListSolution alloc] init];
    ListNode *node = [solution reverseList:head];
    NSArray<NSNumber *> *ansArray = [ListNode arrayFromHeadNode:node];
    NSArray<NSNumber *> *expectedArray = @[@5, @4, @3, @2, @1];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

@end
