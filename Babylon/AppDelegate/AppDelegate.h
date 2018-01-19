//
//  AppDelegate.h
//  Babylon
//
//  Created by Дарья Кравченко on 03.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

