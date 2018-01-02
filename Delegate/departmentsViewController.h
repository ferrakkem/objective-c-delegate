//
//  departmentsViewController.h
//  Delegate
//
//  Created by Ferrakkem Bhuiyan on 2/1/18.
//  Copyright © 2018 Ferrakkem Bhuiyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class departmentsViewController;
@protocol departmentsDelegate <NSObject>

-(void) didSelectWith :(departmentsViewController *)controller department:(NSString *)department;

@end

@interface departmentsViewController : UITableViewController

@property (nonatomic, weak) id<departmentsDelegate>delegate;

@end

