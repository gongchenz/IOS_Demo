//
//  MyTask.m
//  test
//
//  Created by apple  on 12-11-9.
//  Copyright (c) 2012年 apple . All rights reserved.
//

#import "MyTask.h"

@implementation MyTask

@synthesize operationId;

- (void)main
{
    NSLog(@"task %d is run...", operationId);
    [NSThread sleepForTimeInterval:3];
    NSLog(@"task %d is finished...", operationId);
}

@end
