//
//  MyTableViewCell.h
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableView.h"

@interface MyTableViewCell : UITableViewCell 
//@property (weak, nonatomic) IBOutlet UILabel *lbl;
@property (weak, nonatomic) IBOutlet UILabel *postInput;
@property (weak, nonatomic) IBOutlet UITextField *textField;


//@property (weak, nonatomic) UILabel *postInput;
@property (weak, nonatomic) IBOutlet UIImageView *logoImage;

@end
