//
//  ViewController.m
//  ScoreKeeperTableView
//
//  Created by Michelle Tessier on 7/13/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

//test

#import "ViewController.h"
#import "PlayerController.h"
#import "PlayerTableViewCell.h"

static NSString * const playerCellKey = @"PlayerCellKey";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableview;
@property (nonatomic, strong) PlayerController *playerController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"Score Keeper";
    
     self.playerController = [PlayerController new];
    
    self.tableview = [[UITableView alloc] initWithFrame:self.view.frame];
    
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    self.tableview.allowsSelection = NO;
    
    [self.tableview registerClass:[PlayerTableViewCell class] forCellReuseIdentifier:playerCellKey];
    
    [self.view addSubview: self.tableview];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.playerController.players.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
    PlayerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:playerCellKey];
    
    [cell updateWithPlayer:self.playerController.players[indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView: (UITableView *) tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
