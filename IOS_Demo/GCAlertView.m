//
//  GCAlertView.m
//  test
//
//  Created by apple  on 12-10-15.
//  Copyright (c) 2012年 apple . All rights reserved.
//

#import "GCAlertView.h"

@interface GCAlertView ()

@property (nonatomic, copy) GCAlertViewBlock cancelBlock;
@property (nonatomic, copy) GCAlertViewBlock otherBlock;
@property (nonatomic, copy) NSString *cancelTitle;
@property (nonatomic, copy) NSString *otherTitles;


- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelTitle
        cancelBlock:(GCAlertViewBlock)cancelBlk
  otherButtonTitles:(NSString *)otherTitles
         otherBlock:(GCAlertViewBlock)otherBlk;

@end

@implementation GCAlertView

+ (void)showWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelTitle
        cancelBlock:(GCAlertViewBlock)cancelBlk
  otherButtonTitles:(NSString *)otherTitles
         otherBlock:(GCAlertViewBlock)otherBlk
{
    [[[[self alloc] initWithTitle:title
                        message:message
              cancelButtonTitle:cancelTitle
                    cancelBlock:cancelBlk
              otherButtonTitles:otherTitles
                     otherBlock:otherBlk] autorelease] show];
}

- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelTitle
        cancelBlock:(GCAlertViewBlock)cancelBlk
  otherButtonTitles:(NSString *)otherTitles
         otherBlock:(GCAlertViewBlock)otherBlk
{
    if (self = [super initWithTitle:title
                            message:message
                           delegate:self
                  cancelButtonTitle:cancelTitle
                  otherButtonTitles:otherTitles,nil]) {
        
    }
    
    if(cancelBlk == nil && otherBlk == nil) {
        self.delegate = nil;
    }
    
    self.cancelTitle = cancelTitle;
    self.cancelBlock = cancelBlk;
    self.otherTitles = otherTitles;
    self.otherBlock = otherBlk;
    
    return self;
}

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:self.cancelTitle]) {
        if (self.cancelBlock) {
            self.cancelBlock();
        }
    }else if([buttonTitle isEqualToString:self.otherTitles]) {
        if (self.otherBlock) {
            self.otherBlock();
        }
    }
}
@end







