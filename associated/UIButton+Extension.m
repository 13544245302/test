//
//  UIButton+Extension.m
//  associated
//
//  Created by hlw on 2019/9/25.
//  Copyright © 2019 hlw. All rights reserved.
//

#import "UIButton+Extension.h"
#import <objc/runtime.h>

@implementation UIButton (Extension)
-(void)setAction:(btnClickAction)action{
    objc_setAssociatedObject(self, @"btnAction", action, OBJC_ASSOCIATION_COPY);
}
-(btnClickAction)action{
   return objc_getAssociatedObject(self, @"btnAction");
}
-(void)addClickAction:(btnClickAction)action forControEvents:( UIControlEvents )event{
    [self setAction:action];
    [self  addTarget:self action:@selector(touchAction:) forControlEvents:UIControlEventTouchDown];
}
-(void)touchAction:(UIButton  *)btn{
    self.action(btn);
}
@end
