//
//  QuizViewController.m
//  Quiz
//
//  Created by  Chuns on 11-7-23.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController


- (IBAction)showQuestion:(id)sender
{
    //Step to the next question
    currentQuestionIndex++;
    
    // Am I past the last question?
    if (currentQuestionIndex == [questions count]) {
        
        // Go back to the first question
        currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // Display the string in the question field
    [questionField setText:question];
    
    // Clear the answer field
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Display it in the answer field
    [answerField setText:answer];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
    
    // Add questions and answers to the arrays
    [questions addObject:@"What is 7 + 3?"];
    [answers addObject:@"10"];
    
    [questions addObject:@"Waht is the capital of Vermont?"];
    [answers addObject:@"Montpelier"];
    
    [questions addObject:@"From that is cognac made?"];
    [answers addObject:@"Grapes"];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
