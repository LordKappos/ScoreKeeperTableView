//
//  PlayerTableViewCell.h
//  ScoreKeeperTableView
//
//  Created by Michelle Tessier on 7/13/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerModel.h"

@interface PlayerTableViewCell : UITableViewCell

@property (nonatomic, strong) UITextField *playerNameField;
@property (nonatomic, strong) UILabel *scoreLabel;
@property (nonatomic, strong) UIStepper *stepper;

-(void)updateWithPlayer:(PlayerModel *)player;

@end
