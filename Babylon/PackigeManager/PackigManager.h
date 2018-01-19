//
//  PackigManager.h
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JsonNetworkManager.h"
#import "DataBaseManager.h"



typedef void (^СompletionBlock)(NSArray *responseArray);

@interface PackigManager : NSObject

- (void)getPostsWithCompletion:(СompletionBlock)completion ;
@end
