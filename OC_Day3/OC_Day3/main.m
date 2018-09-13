//
//  main.m
//  OC_Day3
//
//  Created by 毛志鹏 on 2018/8/28.
//  Copyright © 2018年 毛志鹏. All rights reserved.
//


/*
 
 对象和方法
 
 1.类的本质是我们自定义的数据类型
 2.类既然是一个数据类型，类类型的指针变量可以当做参数返回或者传递
 3.当类作为方法的参数时，在方法执行的时候 参数只是一个指针，没有创建对象
    为参数传值以后，形参指针和实参指针指向同一个对象
 
 
 类方法中不能直接访问属性
 属性在对象创建的时候，跟随对象一起创建在对象中
 

 
 C语言中的static
 a.可以修饰局部变量
 b.可以修饰全局变量
 
 
 OC语言中的static关键字
 a.不能修饰属性，也不能修饰方法
 b.可以修饰方法中的局部变量
    如果方法中的局部变量被static修饰，那么变量就会变成静态变量，存储在常量区，当方法执行完的时候不会回收
    下次再执行此方法时，直接使用变量，不会再声明
 
 
 
 
 self 是一个指针，在对象方法中self指向当前的对象，在类方法中指向当前类。
 
    self 在对象方法中 谁调用方法谁就是当前对象
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // instancetype 作为返回值，代表当前这个类的对象
        
        
        // 拼接字符串对象
        int age = 19;
        NSString *name = @"小明";
        [NSString stringWithFormat:@"大家好，我今年%d, 我叫%@", age, name];
        
        [name length];
        
        
        NSString *str = @"Edward";
        NSLog(@"Hello, World!");
    }
    return 0;
}
