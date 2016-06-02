//
//  MKJTableViewCell.h
//  UITableView Cell获取 Demo
//
//  Created by 宓珂璟 on 16/6/2.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MKJTableViewCell;
@protocol MKJTableViewDelegate <NSObject>

- (void)MKJTableView:(MKJTableViewCell *)cell clickButton:(UIButton *)touchBtn;

@end

@interface MKJTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headImageView;
@property (weak, nonatomic) IBOutlet UIButton *touchButton;
@property (nonatomic,weak) id<MKJTableViewDelegate>delegate;
@end
