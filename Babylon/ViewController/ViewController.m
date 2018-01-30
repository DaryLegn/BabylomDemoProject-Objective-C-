//
//  ViewController.m
//  Babylon
//
//  Created by Дарья Кравченко on 03.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "ViewController.h"
@class DetailViewController;

@interface ViewController ()
@property (strong, nonatomic) NetworkManager *manager;
@property (strong, nonatomic) NSArray* arrayForDetails;
@property (strong, nonatomic) NSArray* array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.tableView reloadData];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath: indexPath];
    
    JsonNetworkManager *manager = [ JsonNetworkManager new];
    [manager loadPostsWithCompletion:^(id responseObject, NSError *error) {
        
        self.responseObjectData = [responseObject valueForKey:@"title"];
        NSString *babylonURL = [self.responseObjectData objectAtIndex:indexPath.row];
        cell.postInput.text = [NSString stringWithFormat:@"%@",babylonURL];
       
            }];
    
    return cell;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  
    return 10;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString: @"ShowDetails"] ) {
        DetailViewController *controller = (DetailViewController *)segue.destinationViewController;
        controller.usersArray = self.arrayForDetails;
            controller.usersArray= [self.arrayForDetails objectAtIndex:[self.tableView indexPathForSelectedRow].row];
    }
    
}

@end

