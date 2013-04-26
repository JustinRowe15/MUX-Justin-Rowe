//
//  ThirdViewController.m
//  Net Zero Live iPhone
//
//  Created by Justin and Emma on 4/24/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Survey", @"Survey");
        self.tabBarItem.image = [UIImage imageNamed:@"117-todo"];
    }
    return self;
}

- (void)viewDidLoad
{    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSURL * url = [NSURL URLWithString:@"https://docs.google.com/forms/d/1eiyDMXSu5pdgegzVJ2Qek5kFfMGxzefkfK8w5kETQVc/viewform"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
