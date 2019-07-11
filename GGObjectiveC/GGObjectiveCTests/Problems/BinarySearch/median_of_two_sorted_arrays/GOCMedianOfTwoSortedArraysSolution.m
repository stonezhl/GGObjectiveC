//
//  GOCMedianOfTwoSortedArraysSolution.m
//  GGObjectiveCTests
//
//  Created by Stone Zhang on 5/12/19.
//  Copyright © 2019 Stone Zhang. All rights reserved.
//

#import "GOCMedianOfTwoSortedArraysSolution.h"

@implementation GOCMedianOfTwoSortedArraysSolution

- (CGFloat)findMedianOfTwoSortedArrays:(NSArray<NSNumber *> *)nums1 and:(NSArray<NSNumber *> *)nums2 {
    NSInteger n = nums1.count + nums2.count;
    if (n % 2 == 0) {
        return ([self findKth:n / 2 nums1:nums1 nums2:nums2] + [self findKth:n / 2 + 1 nums1:nums1 nums2:nums2]) / 2.0;
    }  else {
        return [self findKth:n / 2 + 1 nums1:nums1 nums2:nums2];
    }
}

- (NSInteger)findKth:(NSInteger)k nums1:(NSArray<NSNumber *> *)nums1 nums2:(NSArray<NSNumber *> *)nums2  {
    NSInteger left1 = 0;
    NSInteger left2 = 0;
    NSInteger n = k;
    while (n > 1) {
        NSInteger mid1 = left1 + n / 2 - 1;
        NSInteger mid2 = left2 + n / 2 - 1;
        NSInteger left1Value = mid1 < nums1.count ? nums1[mid1].integerValue : NSIntegerMax;
        NSInteger left2Value = mid2 < nums2.count ? nums2[mid2].integerValue : NSIntegerMax;
        if (left1Value <= left2Value) {
            left1 = mid1 + 1;
        } else {
            left2 = mid2 + 1;
        }
        n -= n / 2;
    }
    if (left1 >= nums1.count) {
        return nums2[left2].integerValue;
    }
    if (left2 >= nums2.count) {
        return nums1[left1].integerValue;
    }
    if (nums1[left1].integerValue <= nums2[left2].integerValue) {
        return nums1[left1].integerValue;
    } else {
        return nums2[left2].integerValue;
    }
}

@end
