//
//  UIImage+Extension.m
//  associated
//
//  Created by hlw on 2019/9/26.
//  Copyright © 2019 hlw. All rights reserved.
//

#import "UIImage+Extension.h"
#import <objc/runtime.h>

@implementation UIImage (Extension)
+(void)load{
    Method imageWithName=class_getClassMethod(self, @selector(imageWithName:));
    Method  imageNamed=class_getClassMethod(self, @selector(imageNamed:));
    method_exchangeImplementations(imageWithName, imageNamed);
    
}
+(instancetype)imageWithName:(NSString*)name{
    UIImage * image=[UIImage  imageWithName:name];
    NSLog(@"nihao");
    return image;
}
@end
