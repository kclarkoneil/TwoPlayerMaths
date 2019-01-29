//
//  MathsModel.m
//  TwoPlayersMaths
//
//  Created by Kit Clark-O'Neil on 2018-08-06.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "MathsModel.h"

@implementation MathsModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.player1 = [[Player alloc] initWithName:@"Player 1"];
        self.player2 = [[Player alloc] initWithName: @"Player 2"];
        self.myturn = _player1;
    }
    return self;
}

-(NSString*)generateQuestionForPlayer{
    
    
    int a = arc4random_uniform(20) + 1;
    int b = arc4random_uniform(20) + 1;
    
    
    NSString *question = [[NSString alloc] initWithFormat: @"%@: %i + %i:", self.myturn.name, a, b];
    NSLog(@"%@: %i + %i:", self.myturn.name, a, b);
    self.correctAnswer = a + b;
    
    return question;
}

-(bool)answerComparison:(int)entered {
    
    self.currentPlayer ++;
    
    if (entered == self.correctAnswer)
    {
    
        return YES;
    }
    else {
        
        [self.myturn loseALife];
        return NO;
    }
    
        
}
-(void)chooseCurrentPlayer: (UIView*)superview {
    
    if (self.myturn.lives < 1) {
        NSLog(@"%i", self.myturn.lives);
        UITextView *youLoseTextView = [[UITextView alloc] initWithFrame:CGRectMake(150, 150, 200, 200)];
        [youLoseTextView setBackgroundColor:[UIColor blueColor]];
        [youLoseTextView setFont:[UIFont systemFontOfSize:30]];
        UIButton *playAgain = [[UIButton alloc] init];
        playAgain.titleLabel.text = @"Play Again?";
        [youLoseTextView addSubview:playAgain];
        [superview addSubview: youLoseTextView];
        NSString *youLoseText = [NSString stringWithFormat:@"%@ Is Out Of Lives", self.myturn.name];
        youLoseTextView.text = youLoseText;
        NSLog(@"%@ Is out of Lives", self.myturn.name);
        
        
    }
    if (self.currentPlayer % 2 == 0)
    {
        self.myturn = self.player1;
        NSLog(@"player1 turn");
    }
    else
    {
        self.myturn = self.player2;
        NSLog(@"player2 turn");
    }
}

@end
