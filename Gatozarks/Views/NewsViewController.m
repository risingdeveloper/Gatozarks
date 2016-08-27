//
//  NewsViewController.m
//  Gatozarks
//
//  Created by Risingdeveloper on 8/26/16.
//  Copyright © 2016 Risingdeveloper. All rights reserved.
//

#import "NewsViewController.h"
#import "NewsTableViewCell.h"

@interface NewsViewController ()

@end

@implementation NewsViewController

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
    
    NewsTableViewCell *simpleCell = (NewsTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"newsCell"];
    
    //    if (simpleCell == nil) {
    //        simpleCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:@"simpleCell"];
    //    }
    
    
    //simpleCell.nameLabel.text = names[indexPath.row];
    
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorWithRed:0xef/255.0 green:0xd1/255.0 blue:0x89/255.0 alpha:1];
    [simpleCell setSelectedBackgroundView:bgColorView];
    
    return simpleCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
}


- (IBAction)popup:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
