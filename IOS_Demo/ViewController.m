//
//  ViewController.m
//  IOS_Demo
//
//  Created by apple  on 12-11-12.
//  Copyright (c) 2012年 apple . All rights reserved.
//

#import "ViewController.h"
#import "GCAlertView.h"
#import "MyTask.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    queue = [[NSOperationQueue alloc] init];
    
    NSInteger index = 1;
    MyTask *task = [[[MyTask alloc] init] autorelease];
    task.operationId = index++;
    
    [queue addOperation:task];
    
    
    task = [[[MyTask alloc] init] autorelease];
    task.operationId = index++;
    
    if ([queue operationCount] > 0) {
        MyTask *theBeforTask = [[queue operations] lastObject];
        [task addDependency:theBeforTask];
    }
    
    [queue addOperation:task];
    
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

- (void)dealloc
{
    [queue release];
    [super dealloc];
}

@end
