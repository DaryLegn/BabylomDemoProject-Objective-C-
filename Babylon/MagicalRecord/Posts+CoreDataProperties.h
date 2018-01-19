//
//  Posts+CoreDataProperties.h
//  
//
//  Created by Дарья Кравченко on 04.01.2018.
//
//

#import "Posts+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Posts (CoreDataProperties)

+ (NSFetchRequest<Posts *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *title;

@end

NS_ASSUME_NONNULL_END
