//
//  DataBaseManager.m
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "DataBaseManager.h"


@implementation DataBaseManager

- (NSArray*) loadPosts {
    
    [Posts MR_findAll];
    return  [Posts MR_findAll];
}

- (NSArray *)savePostsFromResponse:(NSArray *)responseArray {
    [Posts MR_truncateAll];
    for (NSDictionary *dict in responseArray) {
        NSManagedObjectContext *contex = [NSManagedObjectContext MR_defaultContext];
        Posts *posts = [Posts MR_createEntityInContext:contex];
        posts.title = [dict valueForKey:@"title"];
        [contex MR_saveToPersistentStoreAndWait];
    }
    return [Posts MR_findAll];
}

@end
