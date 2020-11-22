//
//  Employee.m
//  oc-learning-1
//
//  Created by dcl on 2020/11/22.
//

#import "Employee.h"

@implementation Employee
-(id)initWithname:(NSString *)name :(int)age{
    self = [super init];
    if(self != nil){
        self.name = name;
        self.age = age;
    }
    
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"age = %d, name = %@", _age, _name];
}
@end
