//
//  UIButton+Extension.h
//  associated
//
//  Created by hlw on 2019/9/25.
//  Copyright © 2019 hlw. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^btnClickAction)(UIButton * _Nullable btn);
NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Extension)
@property(nonatomic,copy)btnClickAction action;
-(void)addClickAction:(btnClickAction)action forControEvents:( UIControlEvents )event;
@end

NS_ASSUME_NONNULL_END
