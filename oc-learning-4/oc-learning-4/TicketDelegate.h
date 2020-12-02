//
//  TicketDelegate.h
//  oc-learning-4
//
//  Created by dcl on 2020/11/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TicketDelegate<NSObject>
-(int)leftTicketNumber;
-(double)ticketPrice;
@end

NS_ASSUME_NONNULL_END
