//
//  YMViewController.m
//  YMAsyncKit
//
//  Created by Ryan Guo on 11/13/2015.
//  Copyright (c) 2015 Ryan Guo. All rights reserved.
//

#import <YMAsyncKit/YMAsyncKit.h>
#import "YMViewController.h"

@interface YMViewController ()

@end

@implementation YMViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  dispatch_async_low(^{
    NSLog(@"Nah..");
  });
  
  dispatch_async_high(^{
    NSLog(@"Pss..");
  });
  
  YMAsyncCompareBlock outputBlock = YMAsyncCreateAllBlock(3, ^{
    NSLog(@"Bof..");
  });
  
  NSComparisonResult result = outputBlock();
  NSLog(@"Bof Result: %@", @(result));
  
  result = outputBlock();
  NSLog(@"Bof Result: %@", @(result));
  
  result = outputBlock();
  NSLog(@"Bof Result: %@", @(result));
  
  result = outputBlock();
  NSLog(@"Bof Result: %@", @(result));
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end
