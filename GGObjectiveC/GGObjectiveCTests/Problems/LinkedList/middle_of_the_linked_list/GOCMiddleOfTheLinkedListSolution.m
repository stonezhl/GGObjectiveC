//
//  GOCMiddleOfTheLinkedListSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCMiddleOfTheLinkedListSolution.h"
#import "ListNode.h"

@implementation GOCMiddleOfTheLinkedListSolution

- (ListNode *)middleNode:(ListNode *)head {
    ListNode *slow = head;
    ListNode *fast = head; // fast = head.next for left middle
    while (fast && fast.next) {
        slow = slow.next;
        fast = fast.next.next;
    }
    return slow;
}

@end
