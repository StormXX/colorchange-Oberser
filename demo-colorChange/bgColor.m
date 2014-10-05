//
//  bgColor.m
//  demo-colorChange
//
//  Created by DangGu on 14-10-3.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import "bgColor.h"

@implementation bgColor
-(UIColor *)color{
    NSLog(@"====red:%f,green:%f,blue:%f",_redColor,_greenColor,_blueColor);
    return [UIColor colorWithRed:_redColor/255.0f green:_greenColor/255.0f blue:_blueColor/255.0f alpha:1];
}
-(void)setRedColor:(double)redColor{
        _redColor=redColor;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Notification_Color" object:nil userInfo:[NSDictionary dictionaryWithObject:self.color forKey:@"color"]];
}
-(void)setGreenColor:(double)greenColor{
        _greenColor=greenColor;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Notification_Color" object:nil userInfo:[NSDictionary dictionaryWithObject:self.color forKey:@"color"]];
}
-(void)setBlueColor:(double)blueColor{
        _blueColor=blueColor;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Notification_Color" object:nil userInfo:[NSDictionary dictionaryWithObject:self.color forKey:@"color"]];
}
@end
