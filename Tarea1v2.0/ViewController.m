//
//  ViewController.m
//  Tarea1v2.0
//
//  Created by Jorge Guerra on 25/03/13.
//  Copyright (c) 2013 Jorge Guerra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize userName,password,user,pass;

- (void)viewDidLoad
{
    [super viewDidLoad];
    user=@"test";
    pass=@"test";
    [userName becomeFirstResponder];
	
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //pasar de user a pass
    if(textField == userName){
        [password becomeFirstResponder];
    }
    
    //delegando
    [[NSUserDefaults standardUserDefaults] setObject:userName.text forKey:@"username"];
    
    
    //si el usuario y contraseña son correctos
  if([userName.text isEqualToString:user] && [password.text isEqualToString:pass]){

        //cambiar ViewController
        HomeViewController *homeInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"Home"];
        [self presentViewController:homeInstance animated:YES completion:nil];
        
    }
    else{
        //alerta usario incorrecto
    }
    
   
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
        [self.password resignFirstResponder];
        [self.userName resignFirstResponder];
    }
}


@end
