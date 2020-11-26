//
//  NSString+Number.m
//  oc-learning-3
//
//  Created by dcl on 2020/11/26.
//

#import "NSString+Number.h"

@implementation NSString(Number)
+(int)numberOfStringNumber:(NSString *)str{
    int count = 0;
    for(int i = 0 ; i < str.length; i ++){
        unichar c = [str characterAtIndex:i];
        if(c >= '0' && c <= '9'){
            count ++;
        }
    }
    return count;
}

-(int)numberCount{
    int count = 0;
    for(int i = 0 ; i < self.length; i ++){
        unichar c = [self characterAtIndex:i];
        if(c >= '0' && c <= '9'){
            count ++;
        }
    }
    return count;
}
@end
