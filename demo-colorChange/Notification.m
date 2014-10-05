//
//  Notification.m
//  demo-colorChange
//
//  Created by DangGu on 14-10-3.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import "Notification.h"

@interface Notification ()

@end

@implementation Notification
@synthesize redSlide,greenSlide,blueSlide;
@synthesize bgcolor;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    double interval=10;
    double magin_left=50;
    double magin_top=150;
    double swidth=200;
    double sheight=50;
    float minValue=0;
    float maxValue=255;
    
    bgcolor=[[bgColor alloc] init];
    bgcolor.redColor=0;
    bgcolor.greenColor=0;
    bgcolor.blueColor=0;
    
    //UISlider Init
    redSlide=[[UISlider alloc] initWithFrame:CGRectMake(magin_left, magin_top, swidth, sheight)];
    greenSlide=[[UISlider alloc] initWithFrame:CGRectMake(magin_left, magin_top+(sheight+interval), swidth, sheight)];
    blueSlide=[[UISlider alloc] initWithFrame:CGRectMake(magin_left, magin_top+2*(sheight+interval), swidth, sheight)];
    //UISlider's value set
    [redSlide setMinimumValue:minValue];
    [redSlide setMaximumValue:maxValue];
    [redSlide setContinuous:YES];
    [greenSlide setMinimumValue:minValue];
    [greenSlide setMaximumValue:maxValue];
    [greenSlide setContinuous:YES];
    [blueSlide setMinimumValue:minValue];
    [blueSlide setMaximumValue:maxValue];
    [blueSlide setContinuous:YES];
    //UISlider value change
    [redSlide addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [greenSlide addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [blueSlide addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:redSlide];
    [self.view addSubview:greenSlide];
    [self.view addSubview:blueSlide];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getColor:) name:@"Notification_Color" object:nil];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sliderValueChanged:(UISlider *) slide{
    if(self.redSlide==slide){
        bgcolor.redColor=slide.value;
    }
    if(self.greenSlide==slide){
        bgcolor.greenColor=slide.value;
    }
    if(self.blueSlide==slide){
        bgcolor.blueColor=slide.value;
    }
}

-(void)getColor:(NSNotification *) not{
    NSDictionary * colordic=[not userInfo];
    UIColor * result=[colordic objectForKey:@"color"];
    [self.view setBackgroundColor:result];

}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"Notification_Color" object:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
