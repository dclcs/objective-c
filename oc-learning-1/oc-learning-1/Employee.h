//
//  Employee.h
//  oc-learning-1
//
//  Created by dcl on 2020/11/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
-(id)initWithname:(NSString *)name : (int)age;
@end

NS_ASSUME_NONNULL_END
