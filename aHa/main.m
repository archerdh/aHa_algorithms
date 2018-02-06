//
//  main.m
//  aHa
//
//  Created by zhangzheng on 2018/2/5.
//  Copyright © 2018年 star. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - 1-1桶排序
        NSInteger listNum_1 = 100;
        
        //设置n+1个容器进行数据装载
        NSMutableArray *result_1_1 = [NSMutableArray arrayWithCapacity:101];
        for (int i = 0; i < listNum_1 + 1; i++) {
            [result_1_1 addObject:@"0"];
        }
        //根据数据对对应容器进行计数+1
        NSMutableArray *arr_1_1 = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            NSInteger num_1_1 = random() % listNum_1 + 1;
            [result_1_1 replaceObjectAtIndex:num_1_1 withObject: [NSString stringWithFormat:@"%li", [result_1_1[num_1_1] integerValue] + 1]];
            [arr_1_1 addObject:[NSString stringWithFormat:@"%li", num_1_1]];
        }
        //根据容器中计数值>0进行正序/倒叙输出
        for (int i = 0; i < result_1_1.count; i++) {
            for (int j = 1; j <= [result_1_1[i] integerValue]; j++) {
//                printf("%i  ", i);
            }
        }
        
#pragma mark - 1-2冒泡排序
        NSMutableArray *arr_1_2 = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            NSInteger num_1_2 = random() % listNum_1 + 1;
            [arr_1_2 addObject:[NSString stringWithFormat:@"%li", num_1_2]];
        }
//        NSLog(@"排序前如下\n");
        for (int i = 0; i < arr_1_2.count; i++) {
//            printf("%li  ", [arr_1_2[i] integerValue]);
        }
        //核心逻辑，N个数，递归N-1次归位，将目标比较数进行前置或者后置；
        //现实场景，拍集体照，个高个矮换来换去的思想
        for (int i = 0; i < arr_1_2.count - 1; i++) {
            for (int j = i + 1; j < arr_1_2.count; j++) {
                NSInteger num_i_1_2 = [arr_1_2[i] integerValue];
                NSInteger num_j_1_2 = [arr_1_2[j] integerValue];
                if (num_i_1_2 < num_j_1_2) {
                    NSInteger num_change_1_2 = num_i_1_2;
                    arr_1_2[i] = arr_1_2[j];
                    arr_1_2[j] = [NSString stringWithFormat:@"%li", num_change_1_2];
                }
            }
        }
        
        
//        NSLog(@"排序后如下\n");
        for (int i = 0; i < arr_1_2.count; i++) {
//            printf("%li  ", [arr_1_2[i] integerValue]);
        }
    }
    return 0;
}
