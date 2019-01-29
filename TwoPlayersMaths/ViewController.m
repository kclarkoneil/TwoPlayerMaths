//
//  ViewController.m
//  TwoPlayersMaths
//
//  Created by Kit Clark-O'Neil on 2018-08-06.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel2;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) NSMutableString *currentAnswerTally;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _currentAnswerTally = [[NSMutableString alloc] init];
    self.game = [[MathsModel alloc] init];
    
    NSString *question = [self.game generateQuestionForPlayer];
    self.questionLabel.text = question;
    self.answerLabel.text = @"?";
    self.scoreLabel.text = [NSString stringWithFormat:@"P1 Lives: %i", self.game.player1.lives];
    self.scoreLabel2.text = [NSString stringWithFormat:@"P2 Lives: %i", self.game.player2.lives];
    // POPULATE our labels with information
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonOne:(UIButton *)sender {
    [_currentAnswerTally appendString:@"1"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonTwo:(UIButton *)sender {
    [_currentAnswerTally appendString:@"2"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonThree:(UIButton *)sender {
    [_currentAnswerTally appendString:@"3"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonFour:(UIButton *)sender {
    [_currentAnswerTally appendString:@"4"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonFive:(UIButton *)sender {
    [_currentAnswerTally appendString:@"5"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonSix:(UIButton *)sender {
    [_currentAnswerTally appendString:@"6"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonSeven:(UIButton *)sender {
    [_currentAnswerTally appendString:@"7"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonEight:(UIButton *)sender {
    [_currentAnswerTally appendString:@"8"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}

- (IBAction)buttonNine:(UIButton *)sender {
    [_currentAnswerTally appendString:@"9"];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}
- (IBAction)delButton:(UIButton *)sender {
    if (_currentAnswerTally.length > 0) {
    NSUInteger characterAtIndex = _currentAnswerTally.length - 1;
    NSRange removalRange = NSMakeRange(characterAtIndex, 1);
    [_currentAnswerTally deleteCharactersInRange:removalRange];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}
}

- (IBAction)button:(UIButton *)sender {
    [_currentAnswerTally appendString:@"0"];
     self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
}


- (IBAction)SubmissionButton:(UIButton *)sender {

    int userInput = [self.currentAnswerTally intValue];
    [self.game answerComparison:userInput];
    self.scoreLabel.text = [NSString stringWithFormat:@"P1 Lives: %i", self.game.player1.lives];
    self.scoreLabel2.text = [NSString stringWithFormat:@"P2 Lives: %i", self.game.player2.lives];
    self.currentAnswerTally = [@"" mutableCopy];
    self.answerLabel.text = _currentAnswerTally;
    [self.answerLabel reloadInputViews];
    [self.game chooseCurrentPlayer:(self.view)];
    self.questionLabel.text = [self.game generateQuestionForPlayer];

}

@end
