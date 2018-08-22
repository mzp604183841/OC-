//
//  main.m
//  OC_复习
//
//  Created by 毛志鹏 on 2018/8/21.
//  Copyright © 2018年 毛志鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ss: NSObject {
    @public
    NSString *_name;
    int _age;
    float _height;
}

@end

@implementation Ss

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // NSString 复习
        NSString *string = @"abcdefghijklmn";
        NSLog(@"%@", string);
        
        Ss *p1 = [Ss new];
        p1->_name = @"jack";
        NSLog(@"p1的名字是%@", p1->_name);
        
        /*
        
        // 内存中的五大区域
         堆 存储程序员手动申请的字节空间 malloc calloc realloc函数
         栈 存储局部变量
         BSS区域 存储未被初始化的全局变量和静态变量
         常量区 已经被初始化的全局变量和静态变量和常量
         代码段
        
        // 类加载
         当初始化一个对象时，CPU会到内存的代码段区域加载类文件，这个过程叫做类加载。
         我回到了master分支，写了第二句话。
         创建一个新的feature1分支，写下第一段话。
         
         // dev 我要实验新的merge方法 --no-ff 这是什么意思呢 稍后揭晓
         
        */
        
        
    }
    return 0;
}
