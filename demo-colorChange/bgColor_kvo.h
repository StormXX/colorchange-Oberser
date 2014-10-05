//
//  bgColor_kvo.h
//  demo-colorChange
//
//  Created by DangGu on 14-10-5.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface bgColor_kvo : NSObject
@property (nonatomic, assign) double redColor;
@property (nonatomic, assign) double greenColor;
@property (nonatomic, assign) double blueColor;

@property (nonatomic, strong, readonly) UIColor * color;

+(NSSet *)keyPathsForValuesAffectingColor;
@end
