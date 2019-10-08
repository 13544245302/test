//
//  ViewController.m
//  associated
//
//  Created by hlw on 2019/9/25.
//  Copyright © 2019 hlw. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton  * btn=[[UIButton  alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    btn.backgroundColor=[UIColor cyanColor];
    [btn addClickAction:^(UIButton *  btn) {
        NSLog(@"....");
    } forControEvents:UIControlEventTouchDown];
    [self.view   addSubview:btn];
    UIImageView* img=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    [self.view addSubview:img];
    img.frame=CGRectMake(200, 200, 40, 40);
}


@end
