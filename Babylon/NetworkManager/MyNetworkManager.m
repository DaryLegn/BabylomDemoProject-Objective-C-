//
//  MyNetworkManager.m
//  Babylon
//
//  Created by Дарья Кравченко on 11.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "MyNetworkManager.h"

static NSString *posts = @"posts";
static NSString *users = @"users";
static NSString *comments = @"comments";

@implementation MyNetworkManager

-(void) loadPostsWithCompletion:(BabylonPost)completion{
    [self loadGETRequest:posts requestCompletion:^(id responseObject, NSError *error) {
        if(completion) {
            completion(responseObject, error);
        }
    }];
}

- (void) loadUsersWithComplition:(BabylonUsers)completion{
    [self loadGETRequest:users requestCompletion:^(id responseObject, NSError *error) {
        if(completion){
            completion(responseObject,error);
        }
    }];
}

- (void) loadCommentsWithCompletion:(BabylonUsers)completion{
    [self loadGETRequest:comments requestCompletion:^(id responseObject, NSError *error) {
        if(completion){
            completion(responseObject,error);
        }
    }];
}

@end
