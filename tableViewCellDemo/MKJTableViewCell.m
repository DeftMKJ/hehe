//
//  MKJTableViewCell.m
//  UITableView Cell获取 Demo
//
//  Created by 宓珂璟 on 16/6/2.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "MKJTableViewCell.h"

@implementation MKJTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.headImageView.layer.cornerRadius = 25;
    self.headImageView.clipsToBounds = YES;
}
// 点击按钮
- (IBAction)click:(UIButton *)sender {
    
    if ([self.delegate respondsToSelector:@selector(MKJTableView:clickButton:)]) {
        [self.delegate MKJTableView:self clickButton:sender];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
