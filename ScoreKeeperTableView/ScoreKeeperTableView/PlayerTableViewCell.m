//
//  PlayerTableViewCell.m
//  ScoreKeeperTableView
//
//  Created by Michelle Tessier on 7/13/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "PlayerTableViewCell.h"


static CGFloat margin = 20;
static CGFloat elementHeight = 44;

@implementation PlayerTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        CGFloat nameFieldWidth = 120;
        CGFloat scoreLabelWidth = 60;
        CGFloat stepperButtonWidth = 90;
        
        self.playerNameField = [[UITextField alloc] initWithFrame:CGRectMake(margin, margin, nameFieldWidth, elementHeight)];
        [self.contentView addSubview: self.playerNameField];
        
        self.scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(margin + nameFieldWidth, margin, scoreLabelWidth, elementHeight)];
        self.scoreLabel.text = @"0";
        [self.contentView addSubview:self.scoreLabel];
        
        self.stepper = [[UIStepper alloc] initWithFrame:CGRectMake(60 + nameFieldWidth + scoreLabelWidth, 30, stepperButtonWidth, elementHeight)];
        self.stepper.maximumValue = 1000;
        self.stepper.minimumValue = -1000;
        [self.stepper addTarget:self action:@selector(stepperValueChanged:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:self.stepper];
    }
    return self;
}



-(void)stepperValueChanged: (UIStepper *)stepper{
    int score = stepper.value;
    self.scoreLabel.text = [NSString stringWithFormat:@"%ld", (long)score];
    
}

-(void)updateWithPlayer:(PlayerModel *)player{

    self.playerNameField.text = player.name;
    self.scoreLabel.text = [NSString stringWithFormat:@"%ld", (long)player.score];
    self.stepper.value = player.score;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
