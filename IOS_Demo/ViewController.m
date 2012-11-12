//
//  ViewController.m
//  IOS_Demo
//
//  Created by apple  on 12-11-12.
//  Copyright (c) 2012年 apple . All rights reserved.
//

#import "ViewController.h"
#import "GCAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"aaaaa");
    
    
    [GCAlertView showWithTitle:@"test"
                       message:@"ooo"
             cancelButtonTitle:@"yes"
                   cancelBlock:^(void) {
                       NSLog(@"aaaaa");
                   }
             otherButtonTitles:@"no"
                    otherBlock:^{
                        NSLog(@"bbbb");
                    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
