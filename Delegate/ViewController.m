//
//  ViewController.m
//  Delegate
//
//  Created by Ferrakkem Bhuiyan on 2/1/18.
//  Copyright © 2018 Ferrakkem Bhuiyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"departmentsSegue"])
    {
        departmentsViewController *vc = [segue destinationViewController];
        vc.delegate = self;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark  call_delegate
-(void)didSelectWith:(departmentsViewController *)controller department:(NSString *)department
{
#pragma mark  dismiss_view
    [controller dismissViewControllerAnimated:YES completion:nil];
    
#pragma mark  set_value
    self.departMentLabel.text = department;
}


@end
