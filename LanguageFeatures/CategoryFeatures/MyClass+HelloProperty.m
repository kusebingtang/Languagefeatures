//
//  MyClass+HelloProperty.m
//  LanguageFeatures
//
//  Created by bin jiang on 2019/5/20.
//  Copyright © 2019 bin jiang. All rights reserved.
//
#import <objc/runtime.h>
#import "MyClass+HelloProperty.h"

static char imageURLKey;
@implementation MyClass (HelloProperty)
//@synthesize url;   @synthesize not allowed in a category's implementation
//@dynamic url;
@dynamic associateLength ;

- (void)setUrl:(NSString *)url
{
    objc_setAssociatedObject(self, &imageURLKey, url, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)url
{
    return objc_getAssociatedObject(self, &imageURLKey);
}
/**
 但重写getter和setter方法还是不够，必须要创建一个实例变量，
 这样，就用到了OC runtime动态绑定变量的方法：
 关联对象由AssociationManager管理并在AssociationHashMap存储。
 所有对象的关联内容都存在用一个全局容器中，和宿主类无关。
 _全局容器当中
 */
static char associateLengthKey;
- (NSInteger) associateLength{
    return [(NSNumber *)objc_getAssociatedObject(self, &associateLengthKey) integerValue];
}

- (void) setAssociateLength:(NSInteger)associateLength{
    objc_setAssociatedObject(self, &associateLengthKey, @(associateLength), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
