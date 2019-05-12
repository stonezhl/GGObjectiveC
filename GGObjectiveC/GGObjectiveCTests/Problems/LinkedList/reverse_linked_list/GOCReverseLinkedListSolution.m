//
//  GOCReverseLinkedListSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCReverseLinkedListSolution.h"
#import "ListNode.h"

@implementation GOCReverseLinkedListSolution

- (ListNode *)reverseList:(ListNode *)head {
    ListNode *node = nil;
    ListNode *cur = head;
    while (cur) {
        ListNode *tmp = cur.next;
        cur.next = node;
        node = cur;
        cur = tmp;
    }
    return node;
}

@end
