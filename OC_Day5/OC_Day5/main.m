//
//  main.m
//  OC_Day5
//
//  Created by 毛志鹏 on 2018/9/19.
//  Copyright © 2018年 毛志鹏. All rights reserved.
//



/*
 
 结构体和类的相同点
 1. 都可以将多个数据封装为一个整体
 不同点
 1. 结构体只能封装数据，而类可以封装数据，还可以封装行为。
 2. 结构体分配在栈空间，而类分配在堆空间 （栈空间相对小但是访问效率更高；堆空间相对较大访问效率相对低）
 3. 赋值不同
 应用场景
 如果表示的实体，不仅有数据而且有方法，用类来封装
 
 如果表示的实体没有行为，但是如果属性太多的情况下， 就不要定义结构体。
 
 
 类的本质：
 类的存储：
 
 栈：局部变量
 堆：oc对象 alloc reallco malloc方法申请的内存空间
 bss段：未初始化的 全局变量和静态变量
 数据段：x常量区
 代码段：存储代码
 
 类加载 什么时候加载到代码段：类第一次被访问的时候被加载，一旦被加载到内存中 不会被回收，除非程序结束
 
 以什么形式存储到代码段
    任何存在内存中的数据都有数据类型
 在代码段中存储类的空间是什么步骤
    现在代码段中创建一个class对象，class是foundation框架中的一个类，用来存储类信息
    将类的信息存储在class对象中，这个class对象至少有三个属性：1.类名2.属性3.方法
 所以：类以class对象的形式存储在代码段中，（类对象）
 类对象也有isa指针，指向存储父类的类对象
 
 如何拿到存储在代码段中的类对象
 Class c1 = [Person class]; // Class定义时已经带有*
 调用对象方法 class 就可以得到存储这个对象的所属类的class对象的地址
 对象中的isa指针其实就是代码段中存储类对象的地址
 
 如何使用类对象
 c1 完全等价于 Person
 */


/*
 1. SEL  全称是 selector（方法）选择器
    SEL 是一个数据类型，内存中要申请空间
    可以y理解为SEL是一个类，SEL对象存储的是一个方法
 
 2. 类是以class对象的f形式
 
 3. 调用方法的本质（内部原理）
    a. 先拿到存储方法的SEL对象，就是存储方法的SEL数据
    b. 将SEL消息发送给对象
    c. 此时 对象接收到SEL消息后，就知道要调用方法
    d. 根据对象的isa指针找对存储类的d类对象
    e. 找到对象后，在这个类对象中搜寻是否有传入SEL数据xiang
 
 
 
 
 
 OC对象的点语法的原理
    1. p.age = 19;
        不是直接赋值，编译时会转换为调用getter setter代码
 
    注意，在setter 和 getter方法中慎用点语法
    如果属性没有封装setter 和 getter方法 不能使用点语法，所以@property的作用就是帮助自动生成getter 和 setter方法。
 
 
 
 
 @property 作用：自动生成私有属性，自动生成getter setter的声明和实现
 
 
 
 
 NSObject 和 id 的异同，相同点：万能指针
 NSObject 调用对象方法时，编译器会做编译检查。而id调用方法时，直接通过
 注：id指针只能调用方法，不能用点语法
 
 
 动态类型检测，判断对象是否有该方法。
 
 
 
 init方法做的事情，初始化对象，为对象赋值初始值
        如果属性类型是基本数据类型，赋值0
                        C指针, NULL
                        OC指针，nil
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        float a = 4 * 0.0001;
        NSLog(@"%.4f", a);
        
        
        Class c1 = [Person class];
        Person *p = [c1 new];
        Person *p2 = [Person new];
        
        [p respondsToSelector:@selector(sayHi)];
        [p isKindOfClass:[Person class]];
        
    
        
        
    }
    return 0;
}
