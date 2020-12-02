//
//  MyProtocol.h
//  oc-learning-4
//
//  Created by dcl on 2020/11/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyProtocol <NSObject>
-(void) eat;
@optional
-(void) run;
@end

NS_ASSUME_NONNULL_END
