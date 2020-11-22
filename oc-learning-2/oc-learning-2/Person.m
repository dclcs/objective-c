//
//  Person.m
//  oc-learning-2
//
//  Created by dcl on 2020/11/22.
//

#import "Person.h"

@implementation Person
-(void)dealloc{
    NSLog(@"%@被销毁了",self);
    [super dealloc];
}
@end
