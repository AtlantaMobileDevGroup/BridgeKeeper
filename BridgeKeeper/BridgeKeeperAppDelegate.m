//
//  BridgeKeeperAppDelegate.m
//  BridgeKeeper
//
//  Created by Jeremy Fox on 10/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BridgeKeeperAppDelegate.h"

@implementation BridgeKeeperAppDelegate

@synthesize window = _window;

- (id)init
{
    if(self = [super init]){
        currentQuestionIndex = -1;
        
        questions = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is your name?"];
        [questions addObject:@"What is your quest?"];
        [questions addObject:@"What is the capital of Assyria?"];
        
        answers = [[NSMutableArray alloc] init];
        
        [answers addObject:@"Sir Robin of Camelot."];
        [answers addObject:@"To seek the Holy Grail."];
        [answers addObject:@"I don't know that!  Auuuuuuuugh!"];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    if(++currentQuestionIndex == [questions count]){
        currentQuestionIndex = 0;
    }
    
    NSString* question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"Displaying question: %@", question);
    
    [questionField setText:question];
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString* answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [questions release];
    [answers release];
    [_window release];
    [super dealloc];
}

@end
