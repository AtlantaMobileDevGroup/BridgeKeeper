//
//  BridgeKeeperAppDelegate.h
//  BridgeKeeper
//
//  Created by Jeremy Fox on 10/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BridgeKeeperAppDelegate : NSObject <UIApplicationDelegate>{
    
    int currentQuestionIndex;
    
    NSMutableArray* questions;
    NSMutableArray* answers;
    
    IBOutlet UILabel* questionField;
    IBOutlet UILabel* answerField;
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
