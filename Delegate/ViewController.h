//
//  ViewController.h
//  Delegate
//
//  Created by Ferrakkem Bhuiyan on 2/1/18.
//  Copyright © 2018 Ferrakkem Bhuiyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "departmentsViewController.h"

@interface ViewController : UIViewController<departmentsDelegate>

@property (weak, nonatomic) IBOutlet UILabel *departMentLabel;

@end

