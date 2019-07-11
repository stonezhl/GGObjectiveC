//
//  GOCDeleteNodeInALinkedListTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCDeleteNodeInALinkedListSolution.h"
#import "ListNode.h"

// https://leetcode.com/problems/delete-node-in-a-linked-list/

@interface GOCDeleteNodeInALinkedListTests : XCTestCase

@end

@implementation GOCDeleteNodeInALinkedListTests

- (void)test_deleteNodeInALinkedList_1 {
    NSArray<NSNumber *> *array = @[@4, @5, @1, @9];
    ListNode *head = [ListNode headNodeWithArray:array];
    ListNode *dummy = [ListNode nodeWithVal:NSIntegerMin];
    dummy.next = head;
    ListNode *node = head;
    while (node) {
        if (node.val == 5) {
            break;
        }
        node = node.next;
    }
    GOCDeleteNodeInALinkedListSolution *solution = [[GOCDeleteNodeInALinkedListSolution alloc] init];
    [solution deleteNode:node];
    NSArray<NSNumber *> *ansArray = [ListNode arrayFromHeadNode:dummy.next];
    NSArray<NSNumber *> *expectedArray = @[@4, @1, @9];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

- (void)test_deleteNodeInALinkedList_2 {
    NSArray<NSNumber *> *array = @[@4, @5, @1, @9];
    ListNode *head = [ListNode headNodeWithArray:array];
    ListNode *dummy = [ListNode nodeWithVal:NSIntegerMin];
    dummy.next = head;
    ListNode *node = head;
    while (node) {
        if (node.val == 1) {
            break;
        }
        node = node.next;
    }
    GOCDeleteNodeInALinkedListSolution *solution = [[GOCDeleteNodeInALinkedListSolution alloc] init];
    [solution deleteNode:node];
    NSArray<NSNumber *> *ansArray = [ListNode arrayFromHeadNode:dummy.next];
    NSArray<NSNumber *> *expectedArray = @[@4, @5, @9];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

@end
