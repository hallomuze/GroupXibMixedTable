//
//  EVCloverCell.m
//  evvTableGroupObjc101
//
//  Created by artist on 7/16/16.
//  Copyright © 2016 Ever8greener. All rights reserved.
//

#import "EVCloverCell.h"

@implementation EVCloverCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (CGFloat)cloverCellHeight{
    return 90;
}

@end
