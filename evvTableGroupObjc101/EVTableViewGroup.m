//
//  EVTableViewGroup.m
//  evvTableGroupObjc101
//
//  Created by artist on 7/15/16.
//  Copyright © 2016 Ever8greener. All rights reserved.
//

#import "EVTableViewGroup.h"

@interface EVTableViewGroup ()

@property (strong, nonatomic) UITableViewCell *firstNameCell;
@property (strong, nonatomic) UITableViewCell *lastNameCell;
@property (strong, nonatomic) UITableViewCell *shareCell;

@property (strong, nonatomic) UITextField *firstNameText;
@property (strong, nonatomic) UITextField *lastNameText;

@end

@implementation EVTableViewGroup

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
     return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch(section)
    {
        case 0:  return 2;  // section 0 has 2 rows
        case 1:  return 1;  // section 1 has 1 row
        default: return 0;
    };
}

 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
     
     switch(indexPath.section)
     {
         case 0:
             switch(indexPath.row)
         {
             case 0: return self.firstNameCell;  // section 0, row 0 is the first name
             case 1: return self.lastNameCell;   // section 0, row 1 is the last name
         }
         case 1:
             switch(indexPath.row)
         {
             case 0: return self.shareCell;      // section 1, row 0 is the share option
         }
     }
     return nil;
    
 }
 - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch(section)
    {
        case 0: return @"Profile";
        case 1: return @"Social";
    }
    return nil;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)loadView
{
    [super loadView];
    
    // set the title
    self.title = @"User Options";
    
    // construct first name cell, section 0, row 0
    self.firstNameCell = [[UITableViewCell alloc] init];
    self.firstNameCell.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    self.firstNameText = [[UITextField alloc]initWithFrame:CGRectInset(self.firstNameCell.contentView.bounds, 15, 0)];
    self.firstNameText.placeholder = @"First Name";
    [self.firstNameCell addSubview:self.firstNameText];
    
    // construct last name cell, section 0, row 1
    self.lastNameCell = [[UITableViewCell alloc] init];
    self.lastNameCell.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    self.lastNameText = [[UITextField alloc]initWithFrame:CGRectInset(self.lastNameCell.contentView.bounds, 15, 0)];
    self.lastNameText.placeholder = @"Last Name";
    [self.lastNameCell addSubview:self.lastNameText];
    
    // construct share cell, section 1, row 00
    self.shareCell = [[UITableViewCell alloc]init];
    self.shareCell.textLabel.text = @"Share with Friends";
    self.shareCell.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.5f];
    self.shareCell.accessoryType = UITableViewCellAccessoryCheckmark;
}

@end
