//
//  Person.m
//  oc-learning-1
//
//  Created by dcl on 2020/11/21.
//

#import "Person.h"

@implementation Person
-(void)setAge:(int)age{
    self->_age = age;
}

-(int)age{
    return self->_age;
}


-(void)test{
    int _age = 20;
    NSLog(@"Person age is %d", self->_age);
}
@end
