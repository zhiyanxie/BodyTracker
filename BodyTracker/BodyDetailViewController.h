//
//  BodyDetailViewController.h
//  BodyTracker
//
//  Created by Xiezhiyan on 10/13/15.
//  Copyright © 2015 Appxie. All rights reserved.
//

#import <UIKit/UIKit.h>
@import CoreData;

@interface BodyDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *titleTextField;


@property (strong, nonatomic) IBOutlet UITextField *locationTextField;


@property (strong, nonatomic) IBOutlet UITextField *weightTextField;

@property (strong) NSManagedObject *body;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end
