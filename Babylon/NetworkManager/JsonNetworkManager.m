//
//  JsonNetworkManager.m
//  Babylon
//
//  Created by Дарья Кравченко on 11.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "JsonNetworkManager.h"
@class NetworkManager;

static NSString *posts = @"posts";
static NSString *users = @"users";
static NSString *comments = @"comments";

@implementation JsonNetworkManager

-(void) loadPostsWithCompletion:(BabylonPost)completion{
    NetworkManager *nm = [NetworkManager new];
    [nm loadGETRequest:posts requestCompletion:^(id responseObject, NSError *error) {
        if(completion) {
            completion(responseObject, error);
        }
    }];
}

- (void) loadUsersWithComplition:(BabylonUsers)completion{
    NetworkManager *nm = [NetworkManager new];
    [nm loadGETRequest:users requestCompletion:^(id responseObject, NSError *error) {
        if(completion){
            completion(responseObject,error);
        }
    }];
}

- (void) loadCommentsWithCompletion:(BabylonUsers)completion{
    NetworkManager *nm = [NetworkManager new];
    [nm loadGETRequest:comments requestCompletion:^(id responseObject, NSError *error) {
        if(completion){
            completion(responseObject,error);
        }
    }];
}

@end
