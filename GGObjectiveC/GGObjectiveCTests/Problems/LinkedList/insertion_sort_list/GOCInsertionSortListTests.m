//
//  GOCInsertionSortListTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCInsertionSortListSolution.h"
#import "ListNode.h"

// https://leetcode.com/problems/insertion-sort-list/

@interface GOCInsertionSortListTests : XCTestCase

@end

@implementation GOCInsertionSortListTests

- (void)test_insertionSortList_1 {
    NSArray<NSNumber *> *array = @[@4, @2, @1, @3];
    ListNode *head = [ListNode headNodeWithArray:array];
    GOCInsertionSortListSolution *solution = [[GOCInsertionSortListSolution alloc] init];
    ListNode *node = [solution insertionSortList:head];
    NSArray<NSNumber *> *ansArray = [ListNode arrayFromHeadNode:node];
    NSArray<NSNumber *> *expectedArray = @[@1, @2, @3, @4];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

- (void)test_insertionSortList_2 {
    NSArray<NSNumber *> *array = @[@-1, @5, @3, @4, @0];
    ListNode *head = [ListNode headNodeWithArray:array];
    GOCInsertionSortListSolution *solution = [[GOCInsertionSortListSolution alloc] init];
    ListNode *node = [solution insertionSortList:head];
    NSArray<NSNumber *> *ansArray = [ListNode arrayFromHeadNode:node];
    NSArray<NSNumber *> *expectedArray = @[@-1, @0, @3, @4, @5];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

@end
