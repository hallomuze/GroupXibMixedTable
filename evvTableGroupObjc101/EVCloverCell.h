//
//  EVCloverCell.h
//  evvTableGroupObjc101
//
//  Created by artist on 7/16/16.
//  Copyright © 2016 Ever8greener. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EVCloverCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UIImageView *snsImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

+ (CGFloat)cloverCellHeight;
@end
