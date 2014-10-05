//
//  Notification.h
//  demo-colorChange
//
//  Created by DangGu on 14-10-3.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "bgColor.h"
@interface Notification : UIViewController

@property (nonatomic, strong) UISlider * redSlide;
@property (nonatomic, strong) UISlider * greenSlide;
@property (nonatomic, strong) UISlider * blueSlide;

@property (nonatomic, strong) bgColor * bgcolor;
@end
