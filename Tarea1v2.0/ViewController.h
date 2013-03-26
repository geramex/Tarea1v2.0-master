//
//  ViewController.h
//  Tarea1v2.0
//
//  Created by Jorge Guerra on 25/03/13.
//  Copyright (c) 2013 Jorge Guerra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak,nonatomic) NSString *user;
@property (weak,nonatomic) NSString *pass;


@end
