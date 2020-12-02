//
//  XYZPerson.m
//  programming_with_oc
//
//  Created by dcl on 2020/12/3.
//

#import "XYZPerson.h"

@implementation XYZPerson

+(XYZPerson*) person{
    return [[XYZPerson alloc] init];
}
+(XYZPerson*) person:(NSString *)first :(NSString *)last{
    return  [[XYZPerson alloc] initWithname:first :last];
}

-(id)initWithname:(NSString *)first :(NSString *)last{
    self = [super init];
    _firstname = first;
    _lastname = last;
    return self;
}


-(void)saySomething:(NSString *)greetings{
    NSLog(@"%@", greetings);
}

-(void)sayHello{
    NSLog(@"Hello , World!");
}
@end
