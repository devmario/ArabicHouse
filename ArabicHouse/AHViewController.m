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
    
    scroll = [[AHScroll alloc] initWithFrame:CGRectMake(266, 0, self.view.frame.size.width - 266, self.view.frame.size.height)];
    [self.view addSubview:scroll];
    [scroll release];
    menu = [[AHMenu alloc] initWithFrame:CGRectMake(0,0,266,self.view.frame.size.height) withProtocol:scroll];
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
