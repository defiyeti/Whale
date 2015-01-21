//
//  ViewController.m
//  Whale
//
//  Created by Alex White on 11/2/14.
//  Copyright (c) 2014 Alex White. All rights reserved.
//

#import "ViewController.h"
#import "MenuViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)start {
    MenuViewController* choose =  [[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
    NSLog(@"go");
    [self presentViewController:choose animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(start) withObject:nil afterDelay:3];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
