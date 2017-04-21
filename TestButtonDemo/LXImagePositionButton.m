//
//  LXImagePositionButton.m
//  TestButtonDemo
//
//  Created by xxf on 2017/4/20.
//  Copyright © 2017年 suokeer. All rights reserved.
//

#import "LXImagePositionButton.h"

@implementation LXImagePositionButton

- (void)layoutSubviews {
    [super layoutSubviews];
    
    switch (self.lx_imagePosition) {
        case LXImagePositionButtonCenterBackground:
        {
            CGPoint center = self.imageView.center;
            center.x = self.frame.size.width / 2.0;
            center.y = self.frame.size.height / 2.0;
            self.imageView.center = center;
            
            CGRect labelFrame = self.titleLabel.frame;
            labelFrame.origin.x = 0;
            labelFrame.size.width = self.frame.size.width;
            
            self.titleLabel.frame = labelFrame;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
        }
            break;
        case LXImagePositionButtonHorizontalRight:
        {
            if (_lx_spacing == 0) {
                _lx_spacing = 6;
            }
            CGRect imageRect = self.imageView.frame;
            
            CGRect titleRect = self.titleLabel.frame;
            CGSize titleSize = titleRect.size;
            
            imageRect.origin.x = titleSize.width + self.lx_spacing;
            
            titleRect.origin.x = 0;
            
            self.imageView.frame = imageRect;
            self.titleLabel.frame = titleRect;
        }
            break;
        case LXImagePositionButtonCenterTop:
        {
            if (_lx_spacing == 0) {
                _lx_spacing = 6;
            }
            
            CGPoint imageCenter = self.imageView.center;
            imageCenter.x = self.frame.size.width / 2.0;
            imageCenter.y = self.frame.size.height / 2.0 - self.lx_spacing * 2; /**< 不 * 2 会 偏下一点 */
            self.imageView.center = imageCenter;
            
            CGRect labelFrame = self.titleLabel.frame;
            labelFrame.origin.x = 0;
            labelFrame.origin.y = CGRectGetMaxY(self.imageView.frame) + self.lx_spacing;
            labelFrame.size.width = self.frame.size.width;
            
            self.titleLabel.frame = labelFrame;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
        }
            break;
            
        default:
            break;
    }
}

- (void)setLx_imagePosition:(LXImagePosition)lx_imagePosition {
    _lx_imagePosition = lx_imagePosition;
    
    [self setNeedsLayout];
//    [self layoutIfNeeded];
}

- (void)setLx_spacing:(CGFloat)lx_spacing {
    _lx_spacing = lx_spacing;
    
    [self setNeedsLayout];
//    [self layoutIfNeeded];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
