//
//  LXImagePositionButton.h
//  TestButtonDemo
//
//  Created by xxf on 2017/4/20.
//  Copyright © 2017年 suokeer. All rights reserved.
//



#import <UIKit/UIKit.h>

/**
 *  图片位置
 */
typedef NS_ENUM(NSUInteger, LXImagePosition) {
    /**
     *  图片居中 当文字 背景, 且图片不需要缩放
     */
    LXImagePositionButtonCenterBackground = 100,
    /**
     *  图片在右，文字在左, 默认间距 6
     */
    LXImagePositionButtonHorizontalRight,
    /**
     *  图片居中且在上， 默认间距 6
     */
    LXImagePositionButtonCenterTop,
};

@interface LXImagePositionButton : UIButton

@property (nonatomic, assign) LXImagePosition lx_imagePosition;

@property (nonatomic, assign) CGFloat lx_spacing; /**< 间距, 根据位置不同，默认间距有点不同 */

@end
