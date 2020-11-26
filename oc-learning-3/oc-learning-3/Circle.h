//
//  Circle.h
//  oc-learning-3
//
//  Created by dcl on 2020/11/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Circle : NSObject
@property (nonatomic, readonly) double radius;
@property (nonatomic, readonly) double area;
-(void)makeCircle:double(r);
@end

NS_ASSUME_NONNULL_END
