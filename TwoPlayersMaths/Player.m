//
//  Player.m
//  TwoPlayersMaths
//
//  Created by Kit Clark-O'Neil on 2018-08-06.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "Player.h"

@implementation Player


- (instancetype)initWithName: (NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
        _lives = 3;
    }
    return self;
}
-(void)loseALife {
    self.lives --;

}

@end
