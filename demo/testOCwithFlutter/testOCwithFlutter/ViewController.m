//
//  ViewController.m
//  testOCwithFlutter
//
//  Created by syswin on 2019/8/29.
//  Copyright © 2019 syswin. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(jumpToFlutter)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"jump to flutter" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor orangeColor]];
    button.titleLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightBold];
    button.frame = CGRectMake(95.0, 210.0, 160.0, 44.0);
    [self.view addSubview:button];
}
    
- (void)jumpToFlutter {
    FlutterViewController* flutterViewController = [[FlutterViewController alloc] init];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}


@end
