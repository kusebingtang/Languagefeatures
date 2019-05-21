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
}


@end
