//
//  Student.h
//  LanguageFeatures
//
//  Created by bin jiang on 2019/5/21.
//  Copyright © 2019 bin jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    Female,
    Male,
}Gender;

@interface Student : NSObject
-(void)sayHello;

@property (readonly) Gender gender;
@end

NS_ASSUME_NONNULL_END
