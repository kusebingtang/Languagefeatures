//
//  Student.m
//  LanguageFeatures
//
//  Created by bin jiang on 2019/5/21.
//  Copyright © 2019 bin jiang. All rights reserved.
//

#import "Student.h"
#import "Student_Ext.h"

@interface Student ()
@property (assign, readwrite) float privateValue; //1、声明私有可读写属性;
-(void)privateMethod;
@end


@implementation Student
@synthesize privateValue;
-(void)sayHello{
    NSLog(@"Student say hello");
    self.gender = Female;
}
-(void)sayHi{
    NSLog(@"Student say Hi");
    
    [self privateMethod];
}


-(void)privateMethod
{
    NSLog(@"Student privateMethod call");
    
    privateValue = 5.0f;
     NSLog(@"privateValue = %f",privateValue);
}

@end
