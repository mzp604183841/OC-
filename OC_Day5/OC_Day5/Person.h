//
//  Person.h
//  OC_Day5
//
//  Created by 毛志鹏 on 2019/1/10.
//  Copyright © 2019 毛志鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;

- (void)sayHi;
+ (instancetype)person;


@end

NS_ASSUME_NONNULL_END
 
