//
//  ViewController.m
//  Babylon
//
//  Created by Дарья Кравченко on 03.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NetworkManager *manager;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.tableView reloadData];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath: indexPath];
    
    NetworkManager *manager = [NetworkManager new];
    [manager getPostsWithCompletion:^(id responseObject, NSError *error) {
        
        self.responseObjectData = [responseObject valueForKey:@"title"];
        NSString *babylonURL = [self.responseObjectData objectAtIndex:indexPath.row];
        
       // cell.postInput.text = babylonURL;
        //NSLog(@"\n\n%@", babylonURL);
        
        cell.postInput.text = [NSString stringWithFormat:@"%@",babylonURL];
       
            }];
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

@end

