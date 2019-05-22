//
//  ViewController.m
//  LanguageFeatures
//
//  Created by bin jiang on 2019/5/20.
//  Copyright © 2019 bin jiang. All rights reserved.
//

#import "ViewController.h"

#import "CategoryFeatures/MyClass.h"
#import "CategoryFeatures/MyClass+HelloWorld.h"
#import "CategoryFeatures/MyClass+HelloProperty.h"

#import "Student.h"
#import "Student_Ext.h"

#import "MObject.h"
#import "MObserver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MyClass *myclass = [[MyClass alloc]init];
    myclass.myNSString=@"my first string";
    [myclass HelloWorld];
    [myclass myPrint];
    
    myclass.url = @"my categary url string value";
    myclass.associateLength = 100;
    
    NSLog(@"%@",myclass.myNSString);
    NSLog(@"getter categary  dynamic value:%@",myclass.url);
    NSLog(@"getter categary  dynamic :%@",@(myclass.associateLength));
    
    
    
    Student *s =[[Student alloc] init];
    [s sayHello];
    [s sayHi];
    
    s.gender = Male;
    //s.privateValue = 5.0f;
    //[s privateMethod];
    
    //KVO 方式代码值修改
    MObject *obj = [[MObject alloc] init];
    MObserver *observer = [[MObserver alloc] init];
    
    //调用kvo方法监听obj的value属性的变化
    [obj addObserver:observer forKeyPath:@"value" options:NSKeyValueObservingOptionNew context:NULL];
    
    //通过setter方法修改value
    obj.value = 1;
    // 1 通过kvc设置value能否生效？
    [obj setValue:@2 forKey:@"value"];
    // 2. 通过成员变量直接赋值value能否生效?
    [obj increase];
    
    
}


@end
