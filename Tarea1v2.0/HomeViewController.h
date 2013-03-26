//
//  HomeViewController.h
//  Tarea1v2.0
//
//  Created by Jorge Guerra on 25/03/13.
//  Copyright (c) 2013 Jorge Guerra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "myCell.h"
#import "UpdateStatusViewController.h"

@interface HomeViewController : UIViewController
- (IBAction)goBack:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong,nonatomic) NSMutableArray *states;
@property (strong,nonatomic) NSString *status;
@property (strong,nonatomic) NSString *oldStatus;

@end
