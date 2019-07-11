//
//  GOCMergeTwoSortedListsSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCMergeTwoSortedListsSolution.h"
#import "ListNode.h"

@implementation GOCMergeTwoSortedListsSolution

- (ListNode *)mergeTwoLists:(ListNode *)head1 and:(ListNode *)head2 {
    ListNode *dummy = [ListNode nodeWithVal:NSIntegerMin];
    ListNode *node = dummy;
    ListNode *cur1 = head1;
    ListNode *cur2 = head2;
    while (cur1 && cur2) {
        if (cur1.val < cur2.val) {
            node.next = cur1;
            node = node.next;
            cur1 = cur1.next;
        } else if (cur1.val > cur2.val) {
            node.next = cur2;
            node = node.next;
            cur2 = cur2.next;
        } else {
            node.next = cur1;
            node = node.next;
            cur1 = cur1.next;
            node.next = cur2;
            node = node.next;
            cur2 = cur2.next;
        }
    }
    if (cur1) {
        node.next = cur1;
    } else if (cur2) {
        node.next = cur2;
    }
    return dummy.next;
}

@end
