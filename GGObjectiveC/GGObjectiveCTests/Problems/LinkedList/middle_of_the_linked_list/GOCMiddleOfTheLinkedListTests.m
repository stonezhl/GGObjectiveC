//
//  GOCMiddleOfTheLinkedListTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCMiddleOfTheLinkedListSolution.h"
#import "ListNode.h"

// https://leetcode.com/problems/middle-of-the-linked-list/

@interface GOCMiddleOfTheLinkedListTests : XCTestCase

@end

@implementation GOCMiddleOfTheLinkedListTests

- (void)test_middleOfTheLinkedList_1 {
    NSArray<NSNumber *> *array = @[@1, @2, @3, @4, @5];
    ListNode *head = [ListNode headNodeWithArray:array];
    GOCMiddleOfTheLinkedListSolution *solution = [[GOCMiddleOfTheLinkedListSolution alloc] init];
    ListNode *node = [solution middleNode:head];
    XCTAssertEqual(node.val, 3);
}

- (void)test_middleOfTheLinkedList_2 {
    NSArray<NSNumber *> *array = @[@1, @2, @3, @4, @5, @6];
    ListNode *head = [ListNode headNodeWithArray:array];
    GOCMiddleOfTheLinkedListSolution *solution = [[GOCMiddleOfTheLinkedListSolution alloc] init];
    ListNode *node = [solution middleNode:head];
    XCTAssertEqual(node.val, 4);
}

@end
