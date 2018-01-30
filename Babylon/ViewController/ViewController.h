//
//  ViewController.h
//  Babylon
//
//  Created by Дарья Кравченко on 03.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JsonNetworkManager.h"
#import "DetailViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)  NSArray *responseObjectData;
@property (weak, nonatomic) IBOutlet UILabel *postInput;

@end

