//
//  PackigManager.m
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "PackigManager.h"
@class DataBaseManager;
@class NetworkManager;
@class MyNetworkManager;

@interface PackigManager ()

@property (nonatomic,strong) JsonNetworkManager *manager;
@property (nonatomic,strong) DataBaseManager *dataBaseManager;

@end

@implementation PackigManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.manager = [JsonNetworkManager new];
        self.dataBaseManager= [DataBaseManager new];
    }
    return self;
}

- (void)getPostsWithCompletion:(СompletionBlock) completion {
//    NSString *urlString = [NSString stringWithFormat:@"%@%@", baseURL, postsURL];
//    NSURL *URL = [NSURL URLWithString:urlString];
    [self.manager loadPostsWithCompletion: ^(NSArray* responseArray, NSError *error) {
    if (!error) {
        completion ([self.dataBaseManager savePostsFromResponse: responseArray]);
        NSLog(@"%@", responseArray);
    }else{
        completion ([self.dataBaseManager loadPosts]);
    }
    
    
    }];
}




@end
