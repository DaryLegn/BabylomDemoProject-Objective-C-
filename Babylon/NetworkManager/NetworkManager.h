//
//  NetworkManager.h
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking/AFNetworking.h"
#import "ViewController.h"
#import "MyTableViewCell.h"
#import "DataBaseManager.h"

typedef void (^RequestCompletionBlock)(id responseObject, NSError *error);

@interface NetworkManager : NSObject


@property (nonatomic, strong)  AFHTTPSessionManager *manager;


//-(void) loadData: ^(NSArray *responseArray, NSError *error);
- (void)getPostsWithCompletion:(void (^)(id responseObject, NSError *error))completion;
- (void)loadGETRequest:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion;
- (void)loadGETRequestFrom:(NSURL *)URL withRequestCompletion:(void (^)(id responseObject, NSError *error))completion;
- (void)getCommentsWithCompletion:(void (^)(id responseObject, NSError *error))completion ;
- (void) getUserWithComplition:(void (^)(id responseObject, NSError *error))completion;

- (void)loadGETRequestForUsers:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion;
- (void)loadGETRequestForComments:(NSString *)urlString requestCompletion:(RequestCompletionBlock)completion;
@end
