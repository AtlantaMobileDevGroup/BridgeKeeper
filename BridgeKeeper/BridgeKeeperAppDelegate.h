//
// THIS TUTORIAL IS PART OF THE BOOK "iOS Programming - The Big Nerd Ranch
// guide" by Joe Conway.
//
// Get more info on this booke and purchase it here:
// http://www.bignerdranch.com/book/ios_programming_the_big_nerd_ranch_guide_nd_edition_
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
