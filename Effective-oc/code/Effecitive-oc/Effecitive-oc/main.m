//
//  main.m
//  Effecitive-oc
//
//  Created by dcl on 2020/12/5.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        NSDictionary *personData = [NSDictionary dictionaryWithObjectsAndKeys:
//                                    @"Matt", @"firstname",
//                                    @"Garray", @"lastname",
//                                    [NSNumber numberWithInt:28], @"age"
//                                    , nil];
        NSDictionary *personData = @{@"firstname": @"Matt", @"lastname":@"Garray", @"age":[NSNumber numberWithInt:28]};
        
//        NSMutableArray *mutableArray;
//        [mutableArray replaceObjectAtIndex:1 withObject:@"dog"];
        NSMutableDictionary *mutableDict;
        [mutableDict setObject:@"Garray" forKey:@"lastname"];
        
        
        enum EOCConnectState {
            EOCConnectStateDisconnect,
            EOCConnectStateConnecting,
            EOCConnectStateConnected
        };
        typedef enum EOCConnectState EOCConnectState;
        EOCConnectState state = EOCConnectStateConnected;
        NSLog(@"Hello, World!");
    }
    return 0;
}
