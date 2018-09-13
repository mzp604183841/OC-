//
//  main.m
//  OC_复习
//
//  Created by 毛志鹏 on 2018/8/21.
//  Copyright © 2018年 毛志鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark


@interface Person: NSObject {
    @public
    NSString *_name;
    int _age;
    float _height;
}

@end

@implementation Person

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // NSString 复习
        NSString *string = @"abcdefghijklmn";
        NSLog(@"%@", string);
        
        Person *p1 = [Person new];
        p1->_name = @"jack";
        NSLog(@"p1的名字是%@", p1->_name);
        
        int *p = nil;
        
        /*
        
        // 内存中的五大区域
         栈 存储局部变量
         堆 存储程序员手动申请的字节空间 malloc calloc realloc函数
         BSS区域 存储未被初始化的全局变量和静态变量
         (数据段)常量区 已经被初始化的全局变量和静态变量和常量
         代码段 存储代码
        
        // 类加载
         当初始化一个对象时，CPU会到内存的代码段区域加载类文件，这个过程叫做类加载。
         当程序运行期间，当某个类被第一次访问的时候，会将类存储到内存中的代码段,这个过程叫做类加载，只会被加载一次，一旦被加载入代码段中，指导程序结束的时候内存空间才会被回收（释放）
         
        // 对象在内存中的存储
         Person *p1 = [Person new];
         1) Person *p1 会在栈中申请一块空间 声明一个P指针变量, p1是一个指针变量,存储地址
         2) [Person new] 真正在内存中创建对象的是这句
            new  a. 在堆内存中 申请一块合适大小的空间  alloc
                 b. 在这个空间中,根据类的模板来创建对象.  init
                 c. 类模板中 定义了什么属性, 就依次声明在对象中
         
        // nil && NULL
         NULL 只能作为指针变量的值 如果一个指针的值是NULL:代表这个指针不指向内存中的任何空间
         NULL 等价于零  是一个宏
         nil 只能作为指针变量的值  代表指针变量不指向内存中的任何空间  其实两者等价，但是不建议随便乱用
         建议：
         c指针用NULL  int *p = NULL;
         OC指针用nil  Person *p = nil;
         
         Person *p = nil; 如果一个指针类型的值为nil，代表他不指向任何对象，此时用它访问对象的属性，编译器报错~！！！！
         [p sayHi];   调用兑现的方法，运行不会报错，但是方法不会执行。这是OC的特性。
         
         同类型的指针变量可以相互赋值
         
         
         // 属性的本质是变量，
         创建对象的时候，对象中的属性是按照类模板中规定的类型一次创建属性
         如果对象的属性是另外一个对象的属性，这个属性只是一个指针变量，并没有实际的对象产生
         
         
         // GIT 复习
         我回到了master分支，写了第二句话。
         创建一个新的feature1分支，写下第一段话。
         
         // dev 我要实验新的merge方法 --no-ff 这是什么意思呢 稍后揭晓
         // dev2 所以你现在知道--no-ff 是什么意思了吧，每次切出去的分支想要合并到master上时，都是用普通模式去合并的，git merge --no-ff -m “信息” dev 保留merge信息。
         
         // dev分支上要切bug分支
         
         // git ---- .gitignore文件，可以忽略掉频繁出现的缓存文件，已经在我的GitHub上标星了
         
         
         
         
        */
        
        
    }
    return 0;
}
