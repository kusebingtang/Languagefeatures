//
//  MyClass+HelloProperty.h
//  LanguageFeatures
//
//  Created by bin jiang on 2019/5/20.
//  Copyright © 2019 bin jiang. All rights reserved.
//

/**
 由于Objective-C的动态语言特性，可以动态的创建类，添加属性和方法。
 */
#import "MyClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyClass (HelloProperty)
@property (nonatomic, retain) NSString *url;
@property (nonatomic, assign) NSInteger associateLength;//@property的本质其实是 ivar(实例变量)+getter+setter

@end

NS_ASSUME_NONNULL_END
