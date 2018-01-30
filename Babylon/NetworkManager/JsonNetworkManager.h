//
//  JsonNetworkManager.h
//  Babylon
//
//  Created by Дарья Кравченко on 11.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "NetworkManager.h"
#import "DataBaseManager.h"
@class NetworkManager;


typedef void (^BabylonPost)(NSArray* responseArray, NSError *error);
typedef void (^BabylonUsers)(NSArray* responseArray, NSError *error);
typedef void (^BabylonComments)(NSArray* responseArray, NSError *error);

@interface JsonNetworkManager : NSObject

-(void) loadPostsWithCompletion:(BabylonPost)completion;

- (void) loadUsersWithCompletion:(BabylonUsers)completion;

-(void)loadCommentsWithCompletion:(BabylonComments)completion;


@end
