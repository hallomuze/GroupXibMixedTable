//
//  CloverGroupTVC.m
//  evvTableGroupObjc101
//
//  Created by artist on 7/16/16.
//  Copyright © 2016 Ever8greener. All rights reserved.
//

#import "CloverGroupTVC.h"
#import "EVCloverCell.h"
#import "FriendAddCell.h"

@interface CloverGroupTVC (){
    NSString* uniqueID  ;
    NSString* friendAddInviteID  ;
}


@end

@implementation CloverGroupTVC

- (void)viewDidLoad {
    [super viewDidLoad];
 
    uniqueID = @"cloverCell";
    friendAddInviteID = @"friendAddInviteID";
    
    UINib* cellNib = [UINib nibWithNibName:@"EVCloverCell" bundle:nil];
    UINib* cellFriendNib = [UINib nibWithNibName:@"FriendAddCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:uniqueID];
    [self.tableView registerNib:cellFriendNib forCellReuseIdentifier:friendAddInviteID];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch(section)
    {
        case 0:  return 2;  // section 0 has 2 rows
        case 1:  return 2;  // section 1 has 1 row
        default: return 50;
    };
}

 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
 
     switch(indexPath.section)
     {
         case 0:
             switch(indexPath.row)
         {
             case 0: {
                 FriendAddCell *cell = (FriendAddCell*)[tableView dequeueReusableCellWithIdentifier:friendAddInviteID forIndexPath:indexPath];
                 [cell.titleButton setTitle:@"멜롱" forState:UIControlStateNormal];
                 return cell;
             }
                 
             case 1: {
                 FriendAddCell *cell = (FriendAddCell*)[tableView dequeueReusableCellWithIdentifier:friendAddInviteID forIndexPath:indexPath];
                 [cell.titleButton setTitle:@"페이스북" forState:UIControlStateNormal];
                 return cell;
             }
         }
         case 1:
             switch(indexPath.row)
         {
             case 0: {
                 FriendAddCell *cell = (FriendAddCell*)[tableView dequeueReusableCellWithIdentifier:friendAddInviteID forIndexPath:indexPath];
                 [cell.titleButton setTitle:@"카카" forState:UIControlStateNormal];
                 return cell;
             }
                 
             case 1: {
                 FriendAddCell *cell = (FriendAddCell*)[tableView dequeueReusableCellWithIdentifier:friendAddInviteID forIndexPath:indexPath];
                 [cell.titleButton setTitle:@"Contact" forState:UIControlStateNormal];
                 return cell;
             }
         }
         case 2:
         {
             EVCloverCell *cell = (EVCloverCell*)[tableView dequeueReusableCellWithIdentifier:uniqueID forIndexPath:indexPath];
             cell.titleLabel.text = @"hahaha";
             return cell;
         }
             
     }
     return nil;
     
     
     
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch(indexPath.section)
    {
        case 0:
            switch(indexPath.row)
        {
            case 0: {
                NSLog(@"selected:%@",indexPath);
                break;
            }
                
            case 1: {
                NSLog(@"selected:%@",indexPath);
                break;
            }
        }
        case 1:
            switch(indexPath.row)
        {
            case 0: {
                NSLog(@"selected:%@",indexPath);
                break;
            }
                
            case 1: {
                NSLog(@"selected:%@",indexPath);
                break;
            }
        }

        default:
            NSLog(@"detail views");
    }
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 2) {
        return [EVCloverCell cloverCellHeight];
    
    }else{
        return [FriendAddCell cellHeightFriend];
        
    }
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch(section) {
        case 0: return @"1st Section";
        case 1: return @"Social section";
        default: return @"detail section";
    }
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

@end
