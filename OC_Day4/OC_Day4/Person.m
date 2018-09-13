//
//  Person.m
//  OC_Day4
//
//  Created by 毛志鹏 on 2018/9/12.
//  Copyright © 2018年 毛志鹏. All rights reserved.
//

#import "Person.h"

/*
    1. 创建一个有继承关系的对象，在内存中是如何存储的
        代码段中的每一个类都有一个isa指针，这个指针指向他的父类，直到NSObject结束
        在调用方的时候，先根据对象指针找到对象，再根据对象的isa指针找到类，搜索类中是否有对应的方法，如果没有依次往下找父类。
 
    2. 类与结构体的区别
 
 
 */


@implementation Person

- (void)sayHi {
    NSLog(@"hello world");
    NSLog(@"hello world");
    // hahahahahahahaha
    // 1
    // 2
    // 3
    // 4
}

@end
