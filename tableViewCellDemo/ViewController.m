//
//  ViewController.m
//  tableViewCellDemo
//
//  Created by 宓珂璟 on 16/6/2.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "ViewController.h"
#import "MKJTableViewCell.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource,MKJTableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

static NSString *identyfy = @"MKJTableViewCell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 这样tableView就不会往下偏移64了
    self.automaticallyAdjustsScrollViewInsets = NO;
    // 注册一个cell
    [self.tableView registerNib:[UINib nibWithNibName:identyfy bundle:nil] forCellReuseIdentifier:identyfy];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MKJTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identyfy forIndexPath:indexPath];
    // 别忘了设置代理
    cell.delegate = self;
    // 让cell的点击事件变灰色的那个效果消失
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"点击整个cell%@",indexPath);
}
// cell的代理方法
- (void)MKJTableView:(MKJTableViewCell *)cell clickButton:(UIButton *)touchBtn
{
    NSIndexPath *indexpath1 = [self.tableView indexPathForCell:cell];
    NSLog(@"第一种简单粗暴%@",indexpath1);
    
    MKJTableViewCell *cell1 = (MKJTableViewCell *)[[touchBtn superview] superview];
    NSIndexPath *indexpath2 = [self.tableView indexPathForCell:cell1];
    NSLog(@"第二种方法%@",indexpath2);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

