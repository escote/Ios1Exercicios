//
//  TableViewController.m
//  Aula02
//
//  Created by Felipe Escote on 9/10/16.
//  Copyright © 2016 IESB. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()


@property (strong, nonatomic) NSMutableArray<NSString *> *pratos;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pratos = [@[@"Filé à parmegiana", @"Batata rústica", @"Hambúrger", @"Filé de tilápia ao molho de maracujá", @"Lasanha de beringela e abobrinha"] mutableCopy];
    
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    self.tabBarController.navigationItem.rightBarButtonItem = NULL;
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.tabBarController.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pratos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"prato" forIndexPath:indexPath];
    
    if (indexPath.row % 2) {
        [cell setBackgroundColor:[UIColor colorWithRed:0.6 green:0.1 blue:0.1 alpha:1 ]];
    }else {
        [cell setBackgroundColor:[UIColor colorWithRed:0.6 green:0.1 blue:0.1 alpha:0.8 ]];
    }
    
    [cell.textLabel setText:[self.pratos objectAtIndex:indexPath.row]];
    [cell.textLabel setTextColor:[UIColor whiteColor]];
    
    return cell;
}





// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.pratos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
