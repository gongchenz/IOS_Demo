//
//  GCAlertView.h
//  test
//
//  Created by apple  on 12-10-15.
//  Copyright (c) 2012年 apple . All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^GCAlertViewBlock)(void);


@interface GCAlertView : UIAlertView

+ (void)showWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelTitle
        cancelBlock:(GCAlertViewBlock)cancelBlk
  otherButtonTitles:(NSString *)otherTitles
         otherBlock:(GCAlertViewBlock)otherBlk;


@end
