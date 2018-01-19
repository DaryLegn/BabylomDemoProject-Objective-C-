//
//  MyTableView.m
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "MyTableView.h"

@implementation MyTableView

//#pragma mark - Table View Data Source
//- (void) main {
//    
//    self.tableView.dataSource = self;
//    self.tableView.delegate = self;
//    
//}
//
//- (void) reload {
//    
//    [self.tableView reloadData];
//    
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    
//    return 3;
//    
//}
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    
//    return 1;
//    
//}
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath: indexPath];
//    
//    NetworkManager *manager = [NetworkManager new];
//    [manager getPostsWithCompletion:^(id responseObject, NSError *error) {
//        
//        NSArray *responseObjectData = [responseObject valueForKey:@"id"];
//        NSString *babylonURL = [responseObjectData objectAtIndex:indexPath.row];
//        
//        cell.postInput.text = babylonURL;
//        NSLog(@" Yahoo \n\n%@", babylonURL);
//        
//        cell.postInput.text  = @"yyyyy";
//        
//    }];
//    
//    cell.postInput.text = @"h";
//    //cell.postInput.text = [];
//    //NSArray *responseObjectData = [manager respo [indexPath.row]];
//    //cell.postInput.text = [responseObjectData valueForKey:@"id"];
//    
//    //NSLog(@" my %@", self.responseJSON);
//    
////   NSString *babylonURL = [self.responseJSON objectAtIndex:indexPath.row];
//////    DataBaseManager *manager = [DataBaseManager new];
////    cell.postInput.text = babylonURL;
//    
//    //NSLog(@"%@", str);
//    
//    return cell;
//    
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 100;
//}

@end
