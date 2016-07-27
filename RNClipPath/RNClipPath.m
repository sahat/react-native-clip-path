//
//  RNClipPath.m
//  RNClipPath
//
//  Created by Sahat Yalkabov on 7/25/16.
//  Copyright © 2016 Sahat Yalkabov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RCTConvert.h"
#import "RNClipPath.h"
#import <QuartzCore/QuartzCore.h>

@implementation RNClipPath {
  UIImage *_image;
  UIImageView *_imageView;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  
  CAShapeLayer *shapeLayer = [CAShapeLayer layer];
  UIBezierPath *path = [UIBezierPath bezierPath];
  
  [path moveToPoint:CGPointMake(0, self.bounds.size.height)];
  [path addLineToPoint: CGPointMake(0, 0)];
  [path addLineToPoint:CGPointMake(self.bounds.size.width, 0)];
  [path addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height - (self.bounds.size.height * 0.3))];
   [path addLineToPoint:CGPointMake(0, self.bounds.size.height)];
   [path closePath];
  
  shapeLayer.path = path.CGPath;
  
  [self.layer addSublayer:shapeLayer];
  self.layer.mask = shapeLayer;
  
  
//  CALayer *mask = [CALayer layer];
//  mask.contents = (id)[_image CGImage];
//  mask.frame = self.bounds; //TODO custom: CGRectMake(left, top, width, height);
//  self.layer.mask = mask;
//  self.layer.masksToBounds = YES;
}

- (void)setMaskImage:(NSString *)imageString
{
  NSString *imageName = [RCTConvert NSString:imageString];
  _image = [UIImage imageNamed:@"app.jpg"];
}

- (void)displayLayer:(CALayer *)layer
{
  //    override displayLayer because the build-in RCTView
  //    #displayLayer kills the mask
}

@end
