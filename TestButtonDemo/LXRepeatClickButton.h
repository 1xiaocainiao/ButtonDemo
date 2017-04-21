//
//  LXRepeatClickButton.h
//  TestButtonDemo
//
//  Created by xxf on 2017/4/20.
//  Copyright © 2017年 suokeer. All rights reserved.
//

/**
 *  重复点击 button
 */
#import <UIKit/UIKit.h>

@interface LXRepeatClickButton : UIButton

@property (nonatomic, assign) NSTimeInterval lx_acceptEventInterval; /**< 点击间隔 默认为0.0 */

@end
