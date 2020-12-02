//
//  Leader.m
//  oc-learning-4
//
//  Created by dcl on 2020/11/27.
//

#import "Leader.h"
#import "Assistant.h"


@implementation Leader
-(void)buyTicket
{
    int num = [_delegate leftTicketNumber];
    double price = [_delegate ticketPrice];
    
    NSLog(@"通过助理的帮助，机票剩余%d张，每张价格为%.2f元", num, price);
}
@end
