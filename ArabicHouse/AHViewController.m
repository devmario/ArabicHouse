//
//  AHViewController.m
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import "AHViewController.h"

@interface AHViewController ()

@end

@implementation AHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    scroll = [[AHScroll alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scroll];
    [scroll release];
    menu = [[AHMenu alloc] initWithFrame:self.view.frame withProtocol:scroll];
    [self.view addSubview:menu];
    [menu release];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
