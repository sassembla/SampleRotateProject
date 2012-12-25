//
//  AppDelegate.m
//  SampleRotateProject
//
//  Created by sassembla on 2012/12/25.
//  Copyright (c) 2012年 sassembla. All rights reserved.
//

#import "AppDelegate.h"



@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    //baseViewを設置
    baseViewCont = [[BaseViewController alloc]init];
    [self.window addSubview:baseViewCont.view];
    self.window.rootViewController = baseViewCont;
    
    
    //最初のビューとしてAを初期化
    tAViewCont = [[TypeAViewController alloc]init];

    //baseにadd
    [baseViewCont.view addSubview:tAViewCont.view];
    
    //最初のstateはA
    [self setState:STATE_A];
    
    
    //サンプルなので適当にBも初期化
    tBViewCont = [[TypeBViewController alloc]init];
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}



/*
 ステート
 */
int m_state;
- (int) state {
    return m_state;
}

- (void) setState:(int)nextState {
    m_state = nextState;
}


/*
 rotation control
 */
- (void) shouldRotateOrNot {
    switch ([self state]) {
        case STATE_A:{
            [baseViewCont setRotate:false];
        }
            break;
            
        case STATE_B:{
            [baseViewCont setRotate:true];
        }
            break;
            
        default:{
            [baseViewCont setRotate:false];
        } 
            break;
    }
}


- (void) toB {
    [self setState:STATE_B];
    [tAViewCont.view removeFromSuperview];
    tBViewCont = [[TypeBViewController alloc]init];
    [baseViewCont.view addSubview:tBViewCont.view];
}

- (void) toA {
    [self setState:STATE_A];
    [tBViewCont.view removeFromSuperview];
    tAViewCont = [[TypeAViewController alloc]init];
    [baseViewCont.view addSubview:tAViewCont.view];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
