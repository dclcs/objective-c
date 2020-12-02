//
//  Leader.h
//  oc-learning-4
//
//  Created by dcl on 2020/11/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Assistant;
@interface Leader : NSObject
-(void)buyTicket;
@property (nonatomic, strong)Assistant *delegate;
@end

NS_ASSUME_NONNULL_END
