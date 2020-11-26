//
//  Circle.m
//  oc-learning-3
//
//  Created by dcl on 2020/11/26.
//

#import "Circle.h"
#define PI 3.1415

@interface Circle( )
@property (nonatomic, readwrite) double radius;
@property (nonatomic, readwrite) double area;
-(void) caculateArea;
-(void) makeCircle:(double)r;
@end



@implementation Circle

-(void) caculateArea{
    self.area = self.radius * self.radius * PI;
}

-(void)makeCircle:(double)r{
    self.radius = r;
    [self caculateArea];
}
@end
