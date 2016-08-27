//
//  ContactDetailViewController.m
//  Gatozarks
//
//  Created by Risingdeveloper on 8/26/16.
//  Copyright © 2016 Risingdeveloper. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()<UIScrollViewDelegate>{
    int cell_num;
}

@property (weak, nonatomic) IBOutlet UIScrollView *containView;

@end


@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self init_view];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)init_view{
    
    
    NSMutableArray *dataArray = [[NSMutableArray alloc] initWithCapacity: 9];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"BATTLEFIELD ESCROW*",@"506 W. Battlefield",@"Springfield, MO 65807",@"Phone: 417 / 823-0800", @"Fax: 417 / 823-8202", @"REPUBLIC ESCROW*", @"941 E. Hwy 60",@"Republic, MO 65738",@"Phone: 417 / 732-9883",@"Fax: 417 / 732-9886",@"PRIMROSE ESCROW*",@"1545 E. Primrose Ste. B",@"Springfield, MO 65804",@"Phone: 417 / 890-8886",@"Fax: 417 / 890-8872",@"KEARNEY ESCROW*",@"2032 E. Kearney Suite 107",@"Springfield, MO 65803",@"Phone: 417-831-1481",@"Fax: 417-832-9206",nil] atIndex:0];
    
     [dataArray insertObject:[NSMutableArray arrayWithObjects:@"OZARK ESCROW*",@"1701 James River Rd.",@"Ozark, MO 65721",@"Phone: 417 / 581-8810", @"Fax: 417 / 581-8812", @"NIXA ESCROW*", @"210 Village Center Road",@"Nixa, MO 65714",@"Phone: 417 / 725-0088",@"Fax: 417 / 725-0084",nil] atIndex:1];
    
     [dataArray insertObject:[NSMutableArray arrayWithObjects:@"BRANSON WEST OFFICE*",@"18593 Business 13, Ste. 205",@"Branson West, MO 65737",@"Phone: 417 / 272-1450", @"Fax: 417 / 272-9095", nil] atIndex:2];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"BRANSON OFFICE*",@"714 State Hwy. 248, Suite #6",@"Branson, MO 65616",@"Phone: 417 / 336-2135", @"Fax: 417 / 336-2165", nil] atIndex:3];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"MARSHFIELD OFFICE*",@"50 York Drive, Ste. 1",@"Marshfield, MO 65706",@"Phone: 417 / 859-4007", @"Fax: 417 / 859-4107", nil] atIndex:4];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"JOPLIN OFFICE *",@"2401 E. 32nd St, Ste 13",@"Joplin, MO 64804",@"Phone: 417 / 626-7875", @"Fax: 417 / 626-7275", nil] atIndex:5];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"CAMDENTON OFFICE *",@"182 HaHa Tonka Cut Thru",@"Camdenton, MO 65020",@"Phone: 573 / 346-5176", @"Fax: 573 / 346-8373", @"OSAGE BEACH OFFICE",@"3738 Osage Beach Pkwy, Ste. 102",@"Osage Beach, MO 65065",@"Phone: 573 / 693-9894",@"Fax: 573 / 693-9895", nil] atIndex:6];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"AURORA, MONETT, MT. VERNON OFFICE *",@"316 S. Madison Ave.",@"Aurora, MO. 65605",@"Phone: 417 / 678-1458", @"Fax: 417 / 678-1658", nil] atIndex:7];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Columbus Escrow *",@"110 S. Kansas",@"Columbus, KS 66725",@"Phone: 620 / 429-2647", @"Fax: 620 / 429-2648", nil] atIndex:8];
    
    
    
    
    
    UILabel *tempText;
    int view_maxX = self.view.layer.frame.size.width;
    int textY = 0;
    int dy = 33;
    
    self.containView.contentSize = CGSizeMake(view_maxX, 50*[[dataArray objectAtIndex:appController.cell_num] count]);

    for (int i=0;i< [[dataArray objectAtIndex:appController.cell_num]count];i++){
        textY += dy;
        
        tempText = [[UILabel alloc] initWithFrame:CGRectMake(0, textY, view_maxX, dy)];
        tempText.text = [[dataArray objectAtIndex:appController.cell_num]objectAtIndex:i];
        if (i%5==0) tempText.font = [UIFont fontWithName:@"Helvetica-Bold" size:19];
        else tempText.font = [UIFont fontWithName:@"Helvetica" size:18];
        
        tempText.textColor = [UIColor colorWithRed:0xba/255.0 green:0x92/255.0 blue:0x37/255.0 alpha:1];
        tempText.textAlignment = NSTextAlignmentCenter;
        [ self.containView addSubview:tempText];
        
        if (i%5==4){
            textY += dy;
            UIButton *callButton = [[UIButton alloc]initWithFrame:CGRectMake(120, textY, 30, 30)];
            [callButton setBackgroundImage:[UIImage imageNamed:@"icon_phone.png"] forState:normal];
            
            UIButton *mapButton = [[UIButton alloc]initWithFrame:CGRectMake(view_maxX-120-30, textY, 30, 30)];
            [mapButton setBackgroundImage:[UIImage imageNamed:@"icon_map.png"] forState:normal];
            [self.containView addSubview:callButton];
            [self.containView addSubview:mapButton];
            
            [callButton addTarget:self action:@selector(callButton_click) forControlEvents:UIControlEventTouchUpInside];
            [mapButton addTarget:self action:@selector(mapButton_click) forControlEvents:UIControlEventTouchUpInside];
            textY += dy;

        }
    }
    
}

-(void)mapButton_click{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"mapvc"];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)callButton_click{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@",@"55698"]]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)popup:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
