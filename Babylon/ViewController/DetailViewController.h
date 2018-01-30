//
//  DetailViewController.h
//  Babylon
//
//  Created by Дарья Кравченко on 24.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCellForSecondViewController.h"
#import "NetworkForDetails.h"

@interface DetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

typedef void (^BabylonComments)(NSArray* responseArray, NSError *error);

@property (strong, nonatomic) NSArray* commentsArray;
@property (strong, nonatomic) NSArray* usersArray;
@property (weak, nonatomic) IBOutlet UITableView *secondTableView;
@property (weak, nonatomic) UILabel *usersLabel;
@property (weak, nonatomic) UILabel *commentsLabel;

@end
