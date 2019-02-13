//
//  main.m
//  OC_Day6
//
//  Created by 毛志鹏 on 2019/2/11.
//  Copyright © 2019 毛志鹏. All rights reserved.
//





// 内存泄漏：内存没有被及时被回收，一直驻留在内存中，一直到程序结束运行时，才能被回收
/*
 
    @property的四组参数
    1. 与多线程相关的  atomic nonatomic
        atomic（默认）setter方法加上了线程安全锁，安全、效率低
        nonatomic    setter方法不加安全锁，不安全、效率高
 
    2. 与生成setter方法相关的 assign retain
 
    3. 与读写性质相关的 readonly readwWrite
 
    4. 与生成getter setter方法名字相关 getter setter
 
 */






#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
