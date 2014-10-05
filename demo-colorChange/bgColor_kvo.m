//
//  bgColor_kvo.m
//  demo-colorChange
//
//  Created by DangGu on 14-10-5.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import "bgColor_kvo.h"

@implementation bgColor_kvo
-(UIColor *)color{
    NSLog(@"====red:%f,green:%f,blue:%f",_redColor,_greenColor,_blueColor);
    return [UIColor colorWithRed:_redColor/255.0f green:_greenColor/255.0f blue:_blueColor/255.0f alpha:1];
}
+ (NSSet *)keyPathsForValuesAffectingColor
{
    return [NSSet setWithObjects:@"redColor", @"greenColor", @"blueColor", nil];
}
@end
