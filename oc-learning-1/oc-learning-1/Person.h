//
//  Person.h
//  oc-learning-1
//
//  Created by dcl on 2020/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject



{
    @private int _age;
}

-(void)setAge:(int)age;




-(int)age;
-(void)test;
@end

NS_ASSUME_NONNULL_END
