//
//  BodyDetailViewController.m
//  BodyTracker
//
//  Created by Xiezhiyan on 10/13/15.
//  Copyright © 2015 Appxie. All rights reserved.
//

#import "BodyDetailViewController.h"
@import CoreData;


@interface BodyDetailViewController ()

@end

@implementation BodyDetailViewController
@synthesize body;
//xie : retrieve the managed object context from appDelegate
-(NSManagedObjectContext *)mangedObjectContext{
    NSManagedObjectContext *context = nil;
    id delegate=[[UIApplication sharedApplication] delegate];
    if([delegate performSelector :@selector(managedObjectContext)]){
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.body){
        [self.titleTextField setText:[self.body valueForKey:@"title"]];
        [self.locationTextField setText:[self.body valueForKey:@"location"]];
        [self.weightTextField setText:[self.body valueForKey:@"weight"]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self mangedObjectContext];
    if (self.body){//update existing body
        [self.body setValue:self.titleTextField.text forKey:@"title"];
        [self.body setValue:self.locationTextField.text forKey:@"location"];
        [self.body setValue:self.weightTextField.text forKey:@"weight"];
    }else{
        
        //create a new managed object
        NSManagedObjectContext *newBody = [NSEntityDescription insertNewObjectForEntityForName:@"Body" inManagedObjectContext:context];
        [newBody setValue:self.titleTextField.text forKey:@"title"];
        [newBody setValue:self.locationTextField.text forKey:@"location"];
        [newBody setValue:self.weightTextField.text forKey:@"weight"];
    }
    NSError *error = nil;
    // save the persistent store
    if(![context save:&error]){
        NSLog(@"Can't save! %@ %@", error, [error localizedDescription]);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
