//
//  DataBaseManager.h
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Posts+CoreDataClass.h"
#import "Posts+CoreDataProperties.h"
#import "MagicalRecord/MagicalRecord.h"



@interface DataBaseManager : NSObject

- (NSArray*) loadPosts;
- (NSArray *)savePostsFromResponse:(NSArray *)responseArray ;
@end
