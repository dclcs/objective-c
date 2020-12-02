//
//  XYZPerson.h
//  programming_with_oc
//
//  Created by dcl on 2020/12/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYZPerson : NSObject
@property NSString* firstname;
@property NSString* lastname;
@property NSDate* birthOfDate;

+(XYZPerson*)person;
+(XYZPerson*)person :(NSString*)first :(NSString*)last;

-(id) initWithname :(NSString*)first :(NSString*) last;
-(void)saySomething: (NSString*) greetings;

-(void)sayHello;
@end

NS_ASSUME_NONNULL_END
