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
        
        
        
        
    }
    return 0;
}
