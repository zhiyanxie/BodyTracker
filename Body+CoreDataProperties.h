//
//  Body+CoreDataProperties.h
//  BodyTracker
//
//  Created by Xiezhiyan on 10/13/15.
//  Copyright © 2015 Appxie. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Body.h"

NS_ASSUME_NONNULL_BEGIN

@interface Body (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *location;
@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *weight;

@end

NS_ASSUME_NONNULL_END
