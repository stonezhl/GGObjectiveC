//
//  GOCMergeTwoSortedListsTests.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GOCMergeTwoSortedListsSolution.h"
#import "ListNode.h"

// https://leetcode.com/problems/merge-two-sorted-lists/

@interface GOCMergeTwoSortedListsTests : XCTestCase

@end

@implementation GOCMergeTwoSortedListsTests

- (void)test_mergeTwoSortedLists_1 {
    NSArray<NSNumber *> *array1 = @[@1, @2, @4];
    NSArray<NSNumber *> *array2 = @[@1, @3, @4];
    ListNode *head1 = [ListNode headNodeWithArray:array1];
    ListNode *head2 = [ListNode headNodeWithArray:array2];
    GOCMergeTwoSortedListsSolution *solution = [[GOCMergeTwoSortedListsSolution alloc] init];
    ListNode *node = [solution mergeTwoLists:head1 and:head2];
    NSArray<NSNumber *> *ansArray = [ListNode arrayFromHeadNode:node];
    NSArray<NSNumber *> *expectedArray = @[@1, @1, @2, @3, @4, @4];
    XCTAssertEqualObjects(ansArray, expectedArray);
}

@end
