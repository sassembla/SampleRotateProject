//
//  BaseViewController.m
//  SampleRotateProject
//
//  Created by sassembla on 2012/12/25.
//  Copyright (c) 2012年 sassembla. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

BOOL m_rotate;

- (void) setRotate:(BOOL)rotate {
    m_rotate = rotate;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    [[[UIApplication sharedApplication] delegate] performSelector:@selector(shouldRotateOrNot)];
    return m_rotate;
}

- (BOOL)shouldAutorotate {
    [[[UIApplication sharedApplication] delegate] performSelector:@selector(shouldRotateOrNot)];
    return m_rotate;
}

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

@end

