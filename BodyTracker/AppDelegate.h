//
//  AppDelegate.h
//  BodyTracker
//
//  Created by Xiezhiyan on 10/12/15.
//  Copyright © 2015 Appxie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BodyTableTableViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory; // nice to have to reference files for core data
- (void)saveContext;
@end

