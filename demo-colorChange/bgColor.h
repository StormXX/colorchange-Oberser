//
//  bgColor.h
//  demo-colorChange
//
//  Created by DangGu on 14-10-3.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface bgColor : NSObject

@property (nonatomic, assign) double redColor;
@property (nonatomic, assign) double greenColor;
@property (nonatomic, assign) double blueColor;

@property (nonatomic, strong, readonly) UIColor * color;

@end
