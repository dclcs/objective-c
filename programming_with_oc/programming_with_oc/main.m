//
//  main.m
//  programming_with_oc
//
//  Created by dcl on 2020/12/3.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        XYZPerson* xyz = [[XYZPerson alloc] init];
        [xyz sayHello];
        [xyz saySomething:@"dcl is power"];
        
        XYZShoutingPerson* xyzsp = [[XYZShoutingPerson alloc]init];
        [xyzsp saySomething:@"dcl is handsome"];
        
        XYZPerson* xyzt = [XYZPerson person];
        [xyzt sayHello];
        
        XYZShoutingPerson* xyzsp2 = [XYZShoutingPerson person];
        [xyzsp2 saySomething:@"123"];
        
        
        XYZPerson* xyz2;
        if (xyz2 == nil){
            NSLog(@"is empty");
        }else{
            NSLog(@"empty");
        }
    }
    return 0;
}
