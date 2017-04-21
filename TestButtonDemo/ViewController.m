//
//  ViewController.m
//  TestButtonDemo
//
//  Created by xxf on 2017/4/20.
//  Copyright © 2017年 suokeer. All rights reserved.
//

#import "ViewController.h"
#import "LXRepeatClickButton.h"
#import "LXImagePositionButton.h"

@interface ViewController () {
    
    __weak IBOutlet LXRepeatClickButton *button;
    
    __weak IBOutlet LXImagePositionButton *imageButton;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    button.lx_acceptEventInterval = 2.0;
    
    imageButton.lx_imagePosition = LXImagePositionButtonCenterTop;
//    imageButton.lx_spacing = 3;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didTouched:(LXRepeatClickButton *)sender {
    NSLog(@"点击");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
