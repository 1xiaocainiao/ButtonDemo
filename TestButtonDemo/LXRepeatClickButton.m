//
//  LXRepeatClickButton.m
//  TestButtonDemo
//
//  Created by xxf on 2017/4/20.
//  Copyright © 2017年 suokeer. All rights reserved.
//

#import "LXRepeatClickButton.h"

@implementation LXRepeatClickButton

- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    if (self.lx_acceptEventInterval == 0.0) {
        [super sendAction:action to:target forEvent:event];
    } else {
        [super sendAction:action to:target forEvent:event];
        self.userInteractionEnabled = NO;
        
//        [self performSelector:@selector(lx_resetUserInteractionEnabled:) withObject:@(YES) afterDelay:self.lx_acceptEventInterval];
        
        [self lx_delayResetUserInteractionEnabled];
    }
}

- (void)lx_resetUserInteractionEnabled:(id)object {
    BOOL enabled = [object boolValue];
    
    self.userInteractionEnabled = enabled;
}

- (void)lx_delayResetUserInteractionEnabled {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.lx_acceptEventInterval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.userInteractionEnabled = YES;
    });
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
