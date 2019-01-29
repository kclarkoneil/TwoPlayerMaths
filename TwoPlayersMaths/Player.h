//
//  Player.h
//  TwoPlayersMaths
//
//  Created by Kit Clark-O'Neil on 2018-08-06.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int lives;
@property NSString* name;

-(instancetype)initWithName:(NSString*)name;
-(void)loseALife;


@end
