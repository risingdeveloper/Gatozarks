//
//  ContactViewController.m
//  Gatozarks
//
//  Created by Risingdeveloper on 8/26/16.
//  Copyright © 2016 Risingdeveloper. All rights reserved.
//

#import "ContactViewController.h"
#import "ContactTableViewCell.h"

@interface ContactViewController ()<UITableViewDelegate>

@end

NSString *names[]={@"GREENE COUNTY", @"CHRISTIAN COUNTY", @"STONE COUNTY",@"TANEY COUNTY",@"WEBSTER COUNTY",@"JASPER COUNTY",@"CAMDEN COUNTY", @"LAWRENCE COUNTY", @"KANSAS COUNTY"};


@implementation ContactViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - tableview delegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 9;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
     ContactTableViewCell *simpleCell = (ContactTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"simpleCell"];
    
//    if (simpleCell == nil) {
//        simpleCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:@"simpleCell"];
//    }
 
    
    simpleCell.nameLabel.text = names[indexPath.row];
    
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorWithRed:0xef/255.0 green:0xd1/255.0 blue:0x89/255.0 alpha:1];
    [simpleCell setSelectedBackgroundView:bgColorView];
    
    return simpleCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
 
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"contactDetail"];
    appController.cell_num = (int)indexPath.row;
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (IBAction)popup:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
