//
//  AppDelegate.m
//  GiftList
//
//  Created by Meredith Underell on 2012-10-29.
//  Copyright (c) 2012 Comp3912. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


+ (NSString*) occasionlistPath {
    return [[AppDelegate stringWithUserDocuments] stringByAppendingPathComponent:@"occasion_list.plist"];
}

+ (NSString *)stringWithUserDocuments {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    sleep(3); // remove this - just for demo purposes
    [self setUpAppearance];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"occasion_list" ofType:@"plist"];
    NSString* userdocs = [AppDelegate occasionlistPath];
    NSFileManager* fm = [NSFileManager defaultManager];
    BOOL exists = [fm fileExistsAtPath:userdocs];
    if (!exists) {
        [fm copyItemAtPath:plistPath toPath:userdocs error:nil];
    }
    
    
    // Override point for customization after application launch.
    return YES;

}

    // App appearance
- (void) setUpAppearance
{
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"NavBar"] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTintColor:[UIColor brownColor]];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{UITextAttributeTextColor : [UIColor brownColor], UITextAttributeTextShadowColor: [UIColor clearColor]}];

    [[UITabBar appearance] setSelectedImageTintColor:[UIColor brownColor]];

    [[UITableView appearance] setBackgroundColor:[UIColor whiteColor]];
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
