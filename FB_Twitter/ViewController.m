//
//  ViewController.m
//  FB_Twitter
//
//  Created by Gabriel Massana on 11/18/13.
//  Copyright (c) 2013 Gabriel Massana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *buttonFacebook;
@property (nonatomic, strong) UIButton *buttonTwitter;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.buttonFacebook = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.buttonFacebook setFrame:CGRectMake(20, 70, 280, 50)];
    [self.buttonFacebook setTitle:@"Facebook" forState:UIControlStateNormal];
    [self.buttonFacebook setBackgroundColor:[UIColor colorWithRed:238.0f/255.f green:130.0f/255.f blue:238.0f/255.f alpha:1]];
    [self.buttonFacebook addTarget:self action:@selector(facebook:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonFacebook];
    
    self.buttonTwitter = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.buttonTwitter setFrame:CGRectMake(20, 140, 280, 50)];
    [self.buttonTwitter setTitle:@"Twitter" forState:UIControlStateNormal];
    [self.buttonTwitter setBackgroundColor:[UIColor colorWithRed:238.0f/255.f green:130.0f/255.f blue:238.0f/255.f alpha:1]];
    [self.buttonTwitter addTarget:self action:@selector(twitter:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonTwitter];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (void)facebook: (id) sender
{
    //http://stackoverflow.com/questions/12107627/open-facebook-page-in-native-facebook-ios-app-via-simple-url-sheme-issue
    //http://stackoverflow.com/questions/10416338/open-a-facebook-link-by-native-facebook-app-on-ios
    //http://stackoverflow.com/questions/1656808/iphone-open-a-url-programmatically
    
    NSString *fbProfile ;
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"fb://"]])
    {
        fbProfile = @"fb://profile/1550686697";
    }
    else
    {
        fbProfile = @"https://www.facebook.com/gabriel.massana";
    }
    
    NSURL *fbURL = [NSURL URLWithString:fbProfile];
    [[UIApplication sharedApplication] openURL:fbURL];
}

- (void)twitter: (id) sender
{
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=MyTwitterID"]];
    //https://dev.twitter.com/discussions/8181
    
    NSString *twitterProfile ;
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter://"]])
    {
        twitterProfile = @"twitter://user?screen_name=GabrielMassana";
    }
    else
    {
        twitterProfile = @"https://twitter.com/GabrielMassana";
    }
    
    NSURL *twitterURL = [NSURL URLWithString:twitterProfile];
    [[UIApplication sharedApplication] openURL:twitterURL];
}



@end
