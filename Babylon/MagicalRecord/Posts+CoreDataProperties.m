//
//  Posts+CoreDataProperties.m
//  
//
//  Created by Дарья Кравченко on 04.01.2018.
//
//

#import "Posts+CoreDataProperties.h"

@implementation Posts (CoreDataProperties)

+ (NSFetchRequest<Posts *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Posts"];
}

@dynamic title;

@end
