//
//  KVO.h
//  demo-colorChange
//
//  Created by DangGu on 14-10-4.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "bgColor_kvo.h"
@interface KVO : UIViewController
@property (nonatomic, strong) UISlider * redSlide;
@property (nonatomic, strong) UISlider * greenSlide;
@property (nonatomic, strong) UISlider * blueSlide;

@property (nonatomic, strong) bgColor_kvo * bgcolor;

@end
