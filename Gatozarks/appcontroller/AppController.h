//
//  AppController.h
//  Marqoo
//
//  Created by admin on 12/1/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "Haneke.h"

@interface AppController : NSObject


@property (nonatomic) int cell_num;


+ (AppController *)sharedInstance;

@end