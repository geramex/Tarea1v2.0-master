//
//  UpdateStatusViewController.m
//  Tarea1v2.0
//
//  Created by Jorge Guerra on 25/03/13.
//  Copyright (c) 2013 Jorge Guerra. All rights reserved.
//

#import "UpdateStatusViewController.h"

@interface UpdateStatusViewController ()

@end

@implementation UpdateStatusViewController

@synthesize updateText;


- (void)viewDidLoad
{
    [super viewDidLoad];
    [updateText becomeFirstResponder];

}



- (IBAction)goBack:(id)sender {
    //cambiar ViewController
    HomeViewController *homeInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:homeInstance animated:YES completion:nil];
    
    
}


#pragma mark - Keyboard stuff

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField == updateText){
        //delegando
        [[NSUserDefaults standardUserDefaults] setObject:updateText.text forKey:@"nuevoStatus"];
        
        //cambiar ViewController
        HomeViewController *homeInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"Home"];
        [self presentViewController:homeInstance animated:YES completion:nil];
        
    }

    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
        [self.updateText resignFirstResponder];
        
    }
}


@end



