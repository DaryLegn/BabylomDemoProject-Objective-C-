//
//  DetailViewController.m
//  Babylon
//
//  Created by Дарья Кравченко on 24.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.secondTableView.dataSource = self;
    self.secondTableView.delegate = self;
    
    [self.secondTableView reloadData];
    
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCellForSecondViewController *cell = [tableView dequeueReusableCellWithIdentifier:@"SecondCell" forIndexPath: indexPath];
    
    JsonNetworkManager *manager = [JsonNetworkManager new];
    [manager loadCommentsWithCompletion:^(id responseObject, NSError *error) {
        
        self.commentsArray = [responseObject valueForKey:@"body"];
        NSString *babylonURL = [self.commentsArray objectAtIndex: indexPath.row ];
        
     cell.commentsLabel.text = [NSString stringWithFormat:@"%@",babylonURL];
        
    }];
    
    [manager loadUsersWithCompletion:^(id responseObject, NSError *error) {
        
        self.usersArray = [responseObject valueForKey:@"name"];
        NSString *babylonURL = [self.usersArray objectAtIndex: indexPath.row ];
        
        cell.usersLabel.text = [NSString stringWithFormat:@"%@",babylonURL];
        
    }];
    
    return cell;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

@end
