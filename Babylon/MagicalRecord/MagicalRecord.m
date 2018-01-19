//
//  MagicalRecord.m
//  Babylon
//
//  Created by Дарья Кравченко on 04.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "MagicalRecord.h"
#import "AFNetworking/AFNetworking.h"


@implementation MagicalRecord


- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    
    return context;
}

//-(NSArray) savePostFromResponse: (NSArray *) post {
//    
//    for (NSDictionary *dict in post) {
//        NSManagedObjectContext *context = [NSManagedObjectContext MR_def];
//    }
//    
//    
//    return post;
//}
//- (void) managedObjectContext {
//
//    NSManagedObjectContext *context = [self managedObjectContext];
//
//}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
