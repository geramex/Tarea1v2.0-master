//
//  HomeViewController.m
//  Tarea1v2.0
//
//  Created by Jorge Guerra on 25/03/13.
//  Copyright (c) 2013 Jorge Guerra. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize myTableView,states,status,oldStatus;

int lenght;
float height;

NSString *viejo = @" ";


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    //cargar delegado
    status= [[NSUserDefaults standardUserDefaults] objectForKey:@"nuevoStatus"];
    
    
    //creando arreglo estados
    states = [[NSMutableArray alloc] init];
    
    if(status != Nil){
        [states addObject:status];
    }
    
    
    if([oldStatus isEqualToString:@""]){
        oldStatus=@"Old Status";
    }
    
    if(viejo != Nil){
        
        if ([viejo isEqualToString:@" "]) {
            viejo = @"Old State";
        }
        [states addObject:viejo];
    }
    
    
    
    
    
    
	
}


- (IBAction)goBack:(id)sender {
    //cambiar de ViewController
    ViewController *logInInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"LogIn"];
    [self presentViewController:logInInstance animated:YES completion:nil];
}


#pragma mark - UITableView Implementation

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [states count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    myCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" ];

    //cargar delegado
    cell.userLabel.text= [[NSUserDefaults standardUserDefaults] objectForKey:@"username"];
    cell.statusLabel.text = [states objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
        //cambiar ViewController
        HomeViewController *updateInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"Update"];
        [self presentViewController:updateInstance animated:YES completion:nil];
        viejo = status;

        
    }
    
    
    
}

#pragma mark - Dynamic

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    lenght = [status length];
    if(lenght<40){
        height =80;
        
        
    }
    else if(lenght>40 && lenght<80){
        height = lenght +100;
        
        
    }
    else{
        height = lenght +200;
    }
    
    

    
    
    return height;
}


@end
