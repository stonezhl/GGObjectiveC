//
//  GOCDeleteNodeInALinkedListSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCDeleteNodeInALinkedListSolution.h"
#import "ListNode.h"

@implementation GOCDeleteNodeInALinkedListSolution

- (void)deleteNode:(ListNode *)node {
    node.val = node.next.val;
    node.next = node.next.next;
}

@end
