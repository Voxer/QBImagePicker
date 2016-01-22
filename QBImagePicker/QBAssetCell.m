//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"

@interface QBAssetCell ()

@property (weak, nonatomic) IBOutlet UIView *overlayView;

@end

@implementation QBAssetCell

- (void) awakeFromNib
{
    [super awakeFromNib];
    self.unavailableAssetOverlay.image = [UIImage imageNamed: @"ic_video_select_error"];
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    // Show/hide overlay view
    self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
}

- (void) animateShake
{
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath: @"position"];
    animation.duration     = 0.1;
    animation.repeatCount  = 3;
    animation.autoreverses = YES;
    animation.fromValue = [NSValue valueWithCGPoint: CGPointMake(self.center.x - 5.0f, self.center.y)];
    animation.toValue   = [NSValue valueWithCGPoint: CGPointMake(self.center.x + 5.0f, self.center.y)];
    [self.layer addAnimation: animation forKey: @"position"];
}

@end
