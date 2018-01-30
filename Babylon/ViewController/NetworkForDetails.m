//
//  NetworkForDetails.m
//  Babylon
//
//  Created by Дарья Кравченко on 24.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "NetworkForDetails.h"

static NSString const *commentURL = @"https://jsonplaceholder.typicode.com/users";
static NSString const *nameUserURL =  @"user";
static NSString const *nameCommentURL =@"comment";
static NSString const *userURL = @"https://jsonplaceholder.typicode.com/users";


@implementation NetworkForDetails

- (instancetype)init {
    self = [super init];
    if (self) {
        self.manager1 = [AFHTTPSessionManager manager];
        self.manager1.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}
//
//- (void)getCommentsWithCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSString *urlString = [NSString stringWithFormat:@"%@%@", commentURL, nameCommentURL];
//    NSURL *URL = [NSURL URLWithString:urlString];
//    [self loadGETRequestFrom:URL withRequestCompletion:^(id responseObject, NSError *error) {
//        completion(responseObject, error);
//    }];
//}
//
//
//- (void)loadGETRequestFrom:(NSURL *)URL withRequestCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//    NSURLSessionDataTask *dataTask = [self.manager1 dataTaskWithRequest:request
//                                                     completionHandler:^(NSURLResponse *response,
//                                                                         id responseObject,
//                                                                         NSError *error) {
//                                                         completion(responseObject, error);
//                                                         
//                                                     }];
//    [dataTask resume];
//}

@end
