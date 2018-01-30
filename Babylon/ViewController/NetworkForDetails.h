//
//  NetworkForDetails.h
//  Babylon
//
//  Created by Дарья Кравченко on 24.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "NetworkManager.h"
#import "AFNetworking/AFNetworking.h"
typedef void (^RequestCompletionBlock)(id responseObject, NSError *error);

@interface NetworkForDetails : NSObject

@property (nonatomic, strong)  AFHTTPSessionManager *manager1;
@property (nonatomic, strong) NSArray *arrayForDetails;

- (void)loadGETCommentsRequest:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion;
- (void)loadGETUsersRequest:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion;
//- (void)getCommentsWithCompletion:(void (^)(id responseObject, NSError *error))completion;
//- (void)loadGETRequestFrom:(NSURL *)URL withRequestCompletion:(void (^)(id responseObject, NSError *error))completion;

@end
