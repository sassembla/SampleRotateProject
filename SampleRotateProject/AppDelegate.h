//
//  AppDelegate.h
//  SampleRotateProject
//
//  Created by sassembla on 2012/12/25.
//  Copyright (c) 2012年 sassembla. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BaseViewController.h"

#import "TypeAViewController.h"
#import "TypeBViewController.h"

enum STATE {
    STATE_A = 0,
    STATE_B
};


@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    BaseViewController * baseViewCont;
    
    TypeAViewController * tAViewCont;
    TypeBViewController * tBViewCont;
    
}

@property (strong, nonatomic) UIWindow *window;

@end
