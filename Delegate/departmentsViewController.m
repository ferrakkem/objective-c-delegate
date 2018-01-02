//
//  departmentsViewController.m
//  Delegate
//
//  Created by Ferrakkem Bhuiyan on 2/1/18.
//  Copyright © 2018 Ferrakkem Bhuiyan. All rights reserved.
//

#import "departmentsViewController.h"

@interface departmentsViewController ()
{
    NSArray *departmentsArray;
}


@end

@implementation departmentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#pragma mark  declare an array
    departmentsArray = @[@"HR", @"Sales", @"Office", @"Wear house", @"Others"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return  departmentsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = departmentsArray[indexPath.row];

    return cell;
}

- (void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
#pragma mark  after select value call to delegate and set value
    [self.delegate didSelectWith:self department:[self.tableView cellForRowAtIndexPath:indexPath].textLabel.text];
}

@end
