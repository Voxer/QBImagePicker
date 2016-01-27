//
//  QBVideoIndicatorView.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/04.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBVideoIndicatorView.h"

@implementation QBVideoIndicatorView

+ (Class) layerClass
{
    return [CAGradientLayer class];
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // Add gradient layer
    CAGradientLayer *gradientLayer = (CAGradientLayer*) self.layer;
    gradientLayer.colors = @[(__bridge id)[[UIColor clearColor] CGColor],
                             (__bridge id)[[[UIColor blackColor] colorWithAlphaComponent: 0.7f] CGColor]];
}

@end
