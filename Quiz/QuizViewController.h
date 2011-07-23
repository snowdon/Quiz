//
//  QuizViewController.h
//  Quiz
//
//  Created by  Chuns on 11-7-23.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

{
    int currentQuestionIndex;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects 
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    
    
    
}


- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
