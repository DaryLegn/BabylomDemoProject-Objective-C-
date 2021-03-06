//
//  NetworkManager.m
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "NetworkManager.h"
@class ViewController;

//static NSString const *baseURL = @"https://jsonplaceholder.typicode.com/";
//static NSString const *postsURL = @"posts";
//static NSString const *commentURL = @"comment";
//static NSString const *nameUserURL =  @"https://jsonplaceholder.typicode.com/users";
//static NSString const *nameCommentURL =@"https://jsonplaceholder.typicode.com/comments";;
//static NSString const *userURL = @"user";



static NSString *babylonURL = @"https://jsonplaceholder.typicode.com/";
static NSString *usersBabylonURL = @"https://jsonplaceholder.typicode.com/users";
static NSString *commentsBabylonURL = @"https://jsonplaceholder.typicode.com/comments";

@implementation NetworkManager

- (instancetype)init {
    self = [super init];
    if (self) {
        self.manager = [AFHTTPSessionManager manager];
        self.manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}

//-(void) loadData: ^(NSArray *responseArray, NSError *error) {
//
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    [manager GET:@"http://jsonplaceholder.typicode.com/posts"
//      parameters:nil
//        progress:nil
//         success:^(NSURLSessionTask *task, id responseObject) {
//             //[self.tableView reloadData];
//
//             self.responseJSON = [responseObject valueForKey:@"id"];
//             NSLog(@" json %@", self.responseJSON);
//
//         } failure:^(NSURLSessionTask *operation, NSError *error) {
//             NSLog(@"Error: %@", error);
//         }];
//
//}
//
//- (void)loadGETRequest:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion{
//    [self.manager GET:[NSString stringWithFormat:@"%@%@",babylonURL,urlString] parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        if(completion){
//            completion(responseObject, nil);
//            NSLog(@"%@",babylonURL);
//        }
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        if (completion) {
//            completion(nil,error);
//        }
//    }];
//}
- (void)loadGETRequest:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion{
    [self.manager GET:[NSString stringWithFormat:@"%@%@", babylonURL, urlString] parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if(completion){
            completion(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (completion) {
            completion(nil,error);
        }
    }];
}
//- (void)loadGETRequestForUsers:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion{
//    [self.manager GET:[NSString stringWithFormat:@"%@%@", usersBabylonURL, urlString] parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        if(completion){
//            completion(responseObject, nil);
//        }
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        if (completion) {
//            completion(nil,error);
//        }
//    }];
//}
//- (void)loadGETRequestForComments:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion{
//    [self.manager GET:[NSString stringWithFormat:@"%@%@", usersBabylonURL, urlString] parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        if(completion){
//            completion(responseObject, nil);
//        }
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        if (completion) {
//            completion(nil,error);
//        }
//    }];
//}
//- (void)getPostsWithCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSString *urlString = [NSString stringWithFormat:@"%@%@", babylonURL, urlString];
//    NSURL *URL = [NSURL URLWithString:urlString];
//    [self loadGETRequestFrom:URL withRequestCompletion:^(id responseObject, NSError *error) {
//        completion(responseObject, error);
//    }];
//}
//
//
//- (void)loadGETRequestFrom:(NSURL *)URL withRequestCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//    NSURLSessionDataTask *dataTask = [self.manager dataTaskWithRequest:request
//                                                     completionHandler:^(NSURLResponse *response,
//                                                                         id responseObject,
//                                                                         NSError *error) {
//                                                         completion(responseObject, error);
//
//                                                     }];
//    [dataTask resume];
//}
//- (void)getCommentsWithCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSString *urlString = [NSString stringWithFormat:@"%@%@",babylonURL, urlString];
//    NSURL *URL = [NSURL URLWithString:urlString];
//    [self loadGETCommentsRequestFrom:URL withRequestCompletion:^(id responseObject, NSError *error) {
//        completion(responseObject, error);
//    }];
//}
//
//
//- (void)loadGETCommentsRequestFrom:(NSURL *)URL withRequestCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//    NSURLSessionDataTask *dataTask = [self.manager dataTaskWithRequest:request
//                                                     completionHandler:^(NSURLResponse *response,
//                                                                         id responseObject,
//                                                                         NSError *error) {
//                                                         completion(responseObject, error);
//                                                         
//                                                     }];
//    [dataTask resume];
//}
//- (void) getUserWithComplition:(void (^)(id responseObject, NSError *error))completion{
//    NSString *urlString = [NSString stringWithFormat:@"%@%@",babylonURL, urlString];
//    NSURL *URL = [NSURL URLWithString:urlString];
//    [self loadGETUsersRequestFrom:URL withRequestCompletion:^(id responseObject, NSError *error) {
//        completion(responseObject, error);
//    }];
//}
//
//- (void)loadGETUsersRequestFrom:(NSURL *)URL withRequestCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//    NSURLSessionDataTask *dataTask = [self.manager dataTaskWithRequest:request
//                                                     completionHandler:^(NSURLResponse *response,
//                                                                         id responseObject,
//                                                                         NSError *error) {
//                                                         completion(responseObject, error);
//                                                         
//                                                     }];
//    [dataTask resume];
//}
//- (void)loadGETCommentRequestFrom:(NSURL *)commentURL withRequestCompletion:(void (^)(id responseObject, NSError *error))completion {
//    NSURLRequest *request = [NSURLRequest requestWithURL:commentURL];
//    NSURLSessionDataTask *dataTask1 = [self.manager dataTaskWithRequest:request
//                                                     completionHandler:^(NSURLResponse *response,
//                                                                         id responseObject,
//                                                                         NSError *error) {
//                                                         completion(responseObject, error);
//                                                         NSLog(@"%@", dataTask1);
//                                                     }];
//    [dataTask1 resume];
//}


@end
