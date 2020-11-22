//
//  main.m
//  oc-learning-2
//
//  Created by dcl on 2020/11/22.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
//    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        __weak Person *p = [[Person alloc]init];
//        NSLog(@"count : %lu", [p retainCount]);
//
//        [p retain];
//        NSLog(@"count : %lu", [p retainCount]);
//
//        [p release];
//        NSLog(@"count : %lu", [p retainCount]);

//        [p release];
        NSLog(@"------------------");
        p = nil;
        NSLog(@"------------------");

        
//    }
    return 0;
}
