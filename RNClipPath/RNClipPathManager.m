//
//  RNClipViewManager.m
//  RNClipPath
//
//  Copyright © 2016 Sahat Yalkabov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RCTBridge.h"
#import "RNClipPathManager.h"
#import "RNClipPath.h"

@implementation RNClipPathManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
  return [[RNClipPath alloc] init];
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(angle, NSNumber);

@end