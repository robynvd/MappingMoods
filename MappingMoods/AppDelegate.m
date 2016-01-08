//
//  AppDelegate.m
//  MappingMoods
//
//  Created by Robyn Van Deventer on 8/01/2016.
//  Copyright © 2016 Robyn Van Deventer. All rights reserved.
//

#import "AppDelegate.h"
#import "MapViewController.h"
#import <MagicalRecord/MagicalRecord.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [MagicalRecord setupCoreDataStack];
    
    self.window.rootViewController = [[MapViewController alloc] init];
    return YES;
}




@end
