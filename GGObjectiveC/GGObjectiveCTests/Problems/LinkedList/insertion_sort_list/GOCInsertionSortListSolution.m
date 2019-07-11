//
//  GOCInsertionSortListSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCInsertionSortListSolution.h"
#import "ListNode.h"

@implementation GOCInsertionSortListSolution

- (ListNode *)insertionSortList:(ListNode *)head {
    ListNode *dummy = [ListNode nodeWithVal:NSIntegerMin];
    ListNode *cur = head;
    while (cur) {
        ListNode *node = dummy;
        while (node.next) {
            if (node.next.val <= cur.val) {
                node = node.next;
            } else {
                break;
            }
        }
        ListNode *tmp = cur.next;
        cur.next = node.next;
        node.next = cur;
        cur = tmp;
    }
    return dummy.next;
}

@end
