//
//  ViewController.m
//  ResizeImage
//
//  Created by jiangxinjian on 14-4-11.
//  Copyright (c) 2014年 jiangxinjian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.resizeImage.image = [UIImage imageNamed:@"message_bubble_right"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)valueChange:(id)sender {
    
    UISlider *slider = (UISlider*)sender;
    UILabel *label = (UILabel*)[self.view viewWithTag:slider.tag*10];
    label.text = [NSString stringWithFormat:@"%f", slider.value];
    
    self.resizeImage.image = [[UIImage imageNamed:@"message_bubble_right"] resizableImageWithCapInsets:UIEdgeInsetsMake(self.topSlider.value, self.leftSlider.value, self.bottomSlider.value, self.rightSlider.value) resizingMode:UIImageResizingModeStretch];
}


-(IBAction)imageHeightChange:(id)sender {
    UISlider *slider = (UISlider*)sender;
    CGRect imgFrame = self.resizeImage.frame;
    self.resizeImage.frame = CGRectMake(imgFrame.origin.x, imgFrame.origin.y, imgFrame.size.width, slider.value);
}

@end
