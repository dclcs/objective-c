//
//  EOCPerson.h
//  Effecitive-oc
//
//  Created by dcl on 2020/12/5.
//

#import <Foundation/Foundation.h>
//#import "EOCEmployer.h"
@class EOCEmployer;
@interface EOCPerson : NSObject
@property (nonatomic, copy) NSString* firstName;
@property (nonatomic, copy) NSString* lastName;
@property (nonatomic, strong) EOCEmployer *employer;
@end
