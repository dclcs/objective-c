//
//  Dog.m
//  oc-learning-1
//
//  Created by dcl on 2020/11/21.
//

#import "Dog.h"

@implementation Dog
-(void)bark{
    NSLog(@"狗狗汪汪");
}


-(void)run{
    [self bark];
    NSLog(@"狗狗泡泡");
}
@end
