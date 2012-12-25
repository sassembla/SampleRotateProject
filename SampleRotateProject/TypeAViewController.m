//
//  TypeAViewController.m
//  SampleRotateProject
//
//  Created by sassembla on 2012/12/25.
//  Copyright (c) 2012年 sassembla. All rights reserved.
//

#import "TypeAViewController.h"

@interface TypeAViewController ()

@end

@implementation TypeAViewController

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

- (IBAction)toBTapped:(id)sender {
    [[[UIApplication sharedApplication] delegate] performSelector:@selector(toB)];
}


@end
