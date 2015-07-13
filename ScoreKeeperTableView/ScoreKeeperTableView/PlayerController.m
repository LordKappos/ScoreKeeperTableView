//
//  PlayerController.m
//  ScoreKeeperTableView
//
//  Created by Michelle Tessier on 7/13/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "PlayerController.h"
#import "PlayerModel.h"

@implementation PlayerController

- (instancetype)init{
    self = [super init];

    if(self) {
    PlayerModel *playerOne = [PlayerModel new];
    playerOne.name = @"Scott";
    playerOne.score = 0;
    
    PlayerModel *playerTwo = [PlayerModel new];
    playerTwo.name = @"Michelle";
    playerOne.score = 0;
    
    PlayerModel *playerThree = [PlayerModel new];
    playerThree.name = @"Alan";
    playerOne.score = 0;
    
    PlayerModel *playerFour = [PlayerModel new];
    playerFour.name = @"Caleb";
    playerOne.score = 0;
    
    
    self.players = @[playerOne, playerTwo, playerThree, playerFour];
        
    }
    return self;
}




@end
