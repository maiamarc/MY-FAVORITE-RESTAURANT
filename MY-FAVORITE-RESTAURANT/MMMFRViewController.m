//
//  MMMFRViewController.m
//  MY-FAVORITE-RESTAURANT
//
//  Created by MARC MONTEYS on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MMMFRViewController.h"
#import "SBJson.h"
#import "MBProgressHUD.h"
#import <RestKit/RestKit.h>
#import "MMMFRMacAddress.h"

@interface MMMFRViewController ()

@end

@implementation MMMFRViewController
@synthesize BookingName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBookingName:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)SendReservation:(id)sender {
    NSLog(@"Quiero Hacer una reserva a nombre de : %@", BookingName.text);
    
    // Get device unique ID
    //UIDevice *device = [UIDevice currentDevice];
    NSString *uniqueIdentifier = [MMMFRMacAddress getMacAddress];
    //NSString *uniqueIdentifier = [device uniqueIdentifier];

    // Start request
    NSString *code = BookingName.text;
    NSURL *url = [NSURL URLWithString:@"http://www.zeniting.net/marc/ios/promo/"];
    //ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
    //[request setPostValue:@"1" forKey:@"rw_app_id"];
    //[request setPostValue:code forKey:@"code"];
    //[request setPostValue:uniqueIdentifier forKey:@"device_id"];
    //[request setDelegate:self];
    //[request startAsynchronous];
    
    // Hide keyword
    [BookingName resignFirstResponder];
    
    // Clear text field
    BookingName.text = @"";
    
    // Start hud
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = @"Redeeming code...";
    
    //return TRUE;

}
@end





