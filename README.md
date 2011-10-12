# Bridge Keeper

A very basic iPhone application created to demostrate Xcode in the first Atlanta Mobile Developer Group meetup on 10/11/11

## Getting Started

### Prerequisites

1. Install XCode
2. Install git

### How To Recreate BridgeKeeper On Your Own

If you have not cloned the BrigeKeeper app from (https://github.com/AtlantaMobileDevGroup/BridgeKeeper) yet, and you are new to iOS programming, you will want to do that now to be able to refer to the completed project if you are unsure where to put and of the code below. To clone this completed BridgeKeeper project from github, open up Terminal and type the following…

cd Desktop/

git clone git@github.com:AtlantaMobileDevGroup/BridgeKeeper.git

You now have the completed BridgeKeeper app on your Desktop. To open the app open the BridgeKeeper folder on your desktop and double click the BridgeKeeper.xcodeproj


### Step 1. Create new project

### Step 2. Choose "Window-Based Application".

### Step 3. Name your project (BridgeKeeper), give it a company identifier (com.yourcompany - this can be anything), and choose target device (iPhone). You do not need Core Data or Unit Tests for the app.

### Step 4. Choose where to save your project.

### Step 5. You will now have your 3 core files
	BridgeKeeperAppDelegate.h
	BridgeKeeperAppDelegate.m
	MainWindow.xib

### Step 6. Open MainWindow.xib and start inserting UI elements
	1.	Open Object Library. View -> Utilities -> Show Object Library. The object library will be in the bottom right of the new panel that opens on the far right of the screen.
	2.	Pull 1 "Label" on to the window near the top center.
	3.	Pull 1 "Round Rectangle Button" on to the window right below the first label.
	4.	Pull another "Label" on to the window near the lower center.
	5.	Pull another "Round Rectangle Button" on to the window right below the second label.
	6.	Adjust the size of the labels and buttons by pulling the sides out, one at a time, until you see the guide.
	7.	Double click the first label and type in something like "Blah".
	8.	Double click the button right below the first label and type in "Show Questions".
	9.	Double click the second label and type in "???".
	10.	Double click the second button and type in "Show Answer".

### Step 7. Create questions and answers member variables and our questions index integer (Open BridgeKeeperAppDelegate.h)
	int currentQuestionIndex;
    NSMutableArray* questions;
    NSMutableArray* answers;

### Step 8. Implement init function (Open BridgeKeeperAppDelegate.m)
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

### Step 9. Set up button actions (Open BridgeKeeperAppDelegate.h)
	- (IBAction)showQuestion:(id)sender;
	- (IBAction)showAnswer:(id)sender;

### BUILD PROJECT (Keyboard Shortcut: Command B) - Look for warnings, we will fix the warnings with next step

### Step 10. Set up button action implementations (Open BridgeKeeperAppDelegate.m)
	- (IBAction)showQuestion:(id)sender
	{

	}

	- (IBAction)showAnswer:(id)sender
	{

	}

### BUILD PROJECT (Keyboard Shortcut: Command B) - Warnings are now gone

### Step 11. Wire up button actions (Open MainWindow.xib)
	1.	Click on "Bridge Keeper App Delegate" in the Objects panel near the middle left of the screen.
	2.	Show the connections inspector, View -> Utilities -> Show Connections Inspector. The connections inspector will open in the top right of the far right panel.
	3.	You will see two actions waiting for a connection, "showAnswer" and "showQuestion".
	4.	Click on the circle next to "showAnswer" and drag it to the "Show Answer" button on the window and let go. Choose "Touch Up Inside" from the dialog box that opens up after letting go.
	5.	Click on the circle next to "showQuestion" and drag it to the "Show Question" button on the window and let go. Choose "Touch Up Inside" from the dialog box that opens up after letting go.

### Step 12.  Set up outlets for our labels (Open BridgeKeeperAppDelegate.h)
	IBOutlet UILabel* questionField;
	IBOutlet UILabel* answerField;

### Step 13. Wire up labels (Open MainWindow.xib)
	1.	Click on "Bridge Keeper App Delegate" in the Objects panel near the middle left of the screen.
	2.	Show the connections inspector, View -> Utilities -> Show Connections Inspector. The connections inspector will open in the top right of the far right panel.
	3.	You will see two outlets waiting for a connection, "answerField" and "questionField".
	4.	Click on the circle next to "answerField" and drag it to the "???" answer label on the window and let go.
	5.	Click on the circle next to "questionField" and drag it to the "Blah" question label on the window and let go.

### Step 14. Implement showQuestion method (Open BridgeKeeperAppDelegate.m)
	if(++currentQuestionIndex == [questions count]){
        currentQuestionIndex = 0;
    }

    NSString* question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"Displaying question: %@", question);
    
    [questionField setText:question];
    [answerField setText:@"???"];

### Step 15. Implement showAnswer method (Open BridgeKeeperAppDelegate.m)
    NSString* answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];

### Step 16. dealloc (Open BridgeKeeperAppDelegate.m at VERY BOTTOM)
	- (void)dealloc
	{
	    [questions release]; <- add this line to existing dealloc
	    [answers release]; <- add this line to existing dealloc
	    [_window release];
	    [super dealloc];
	}

### Step 17. Build and Run your application using the play button near the top left of the screen. that's it!

### NOTE: This tutorial comes from the book "iOS Programming - The Big Nerd Ranch Guide" by Joe Conway.

