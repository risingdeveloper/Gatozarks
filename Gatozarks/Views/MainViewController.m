//
//  MainViewController.m
//  Gatozarks
//
//  Created by Risingdeveloper on 8/26/16.
//  Copyright © 2016 Risingdeveloper. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIView *calendarView;
@property (weak, nonatomic) IBOutlet UIView *newsView;
@property (weak, nonatomic) IBOutlet UIView *calculatorView;
@property (weak, nonatomic) IBOutlet UIView *contactView;

@end

@implementation MainViewController

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

#pragma mark - button events

- (IBAction)calendar_click:(id)sender {
    [self reset_views];
    [_calendarView setBackgroundColor:[UIColor colorWithRed:0xef/255.0 green:0xd1/255.0 blue:0x89/255.0 alpha:1]];
}
- (IBAction)news_click:(id)sender {
    [self reset_views];
    [_newsView setBackgroundColor:[UIColor colorWithRed:0xef/255.0 green:0xd1/255.0 blue:0x89/255.0 alpha:1]];
}
- (IBAction)calculator_click:(id)sender {
    [self reset_views];
    [_calculatorView setBackgroundColor:[UIColor colorWithRed:0xef/255.0 green:0xd1/255.0 blue:0x89/255.0 alpha:1]];
}
- (IBAction)contact_click:(id)sender {
    [self reset_views];
    [_contactView setBackgroundColor:[UIColor colorWithRed:0xef/255.0 green:0xd1/255.0 blue:0x89/255.0 alpha:1]];
}


-(void)reset_views{
    [_calendarView setBackgroundColor:[UIColor whiteColor]];
    [_newsView setBackgroundColor:[UIColor whiteColor]];
    [_calculatorView setBackgroundColor:[UIColor whiteColor]];
    [_contactView setBackgroundColor:[UIColor whiteColor]];
    
}

@end
