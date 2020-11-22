//
//  main.m
//  oc-learning-1
//
//  Created by dcl on 2020/11/21.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
#import "Student.h"
#import "Phone.h"
#import "Employee.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        Person *p = [[Person alloc] init];
//        [p setAge: 10];
//        p.age = 30; //=[self setAge : age]
//        [p test];
        
//        Dog *d = [[Dog alloc] init];
//        [d run];
        
//        Student *stu = [[Student alloc] init];
//        [stu setAge:10];
//        int a = [stu age];
//
//        NSLog(@"Student's age is %d ", a);
        
//        Phone *p1 = [[Phone alloc]init];
//        NSLog(@"p1 手机的价格是%f", p1.price);
//        Phone *p2 = [[Phone alloc]init];
//        NSLog(@"p2 手机的价格是%f", p2.price);
        
        
        Employee *e1 = [[Employee alloc]initWithname:@"jack" :24];
        Employee *e2 = [[Employee alloc]initWithname:@"rose" :23];
        NSLog(@"%@ age is %d", e1.name, e1.age);
        NSLog(@"%@ age is %d", e2.name, e2.age);
        
        NSLog(@"%@", e1);
        NSLog(@"%@", e2);


    }
    return 0;
}
