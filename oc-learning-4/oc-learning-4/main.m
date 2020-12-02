//
//  main.m
//  oc-learning-4
//
//  Created by dcl on 2020/11/26.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Leader.h"
#import "Assistant.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        Person *p = [[Person alloc]init];
//        [p eat];
//        [p run];
        
        
        Leader *leader = [[Leader alloc]init];
        Assistant *assistant = [[Assistant alloc]init];
        leader.delegate = assistant;
        [leader buyTicket];
    }
    
    return 0;
}
