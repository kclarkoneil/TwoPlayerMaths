//
//  MathsModel.h
//  TwoPlayersMaths
//
//  Created by Kit Clark-O'Neil on 2018-08-06.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import <UIKit/UIKit.h>
@interface MathsModel : NSObject


@property Player *player1;
@property Player *player2;
@property Player *myturn;
@property int currentPlayer;
@property int correctAnswer;
@property NSString *question;


-(NSString*)generateQuestionForPlayer;
-(bool)answerComparison:(int)entered;
-(void)chooseCurrentPlayer: (UIView*) superview;
@end
