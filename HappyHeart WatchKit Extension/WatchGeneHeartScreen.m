//
//  WatchGeneHeartScreen.m
//  HappyHeart WatchKit Extension
//
//  Created by BruceWayne on 2/25/18.
//  Copyright © 2018 Northwell. All rights reserved.
//

#import "WatchGeneHeartScreen.h"

@implementation WatchGeneHeartScreen

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
}

- (IBAction)watchAlert {
    
    WKAlertAction *act = [WKAlertAction actionWithTitle:@"OK" style:WKAlertActionStyleCancel handler:^(void){
        NSLog(@"ALERT YES ");
    }];
    
    NSArray *testing = @[act];
    
    [self presentAlertControllerWithTitle:@"HappyHeart Alert" message:@"Caution: Your heart is at risk 150/bps.Please consult your Physician immediately" preferredStyle:WKAlertControllerStyleAlert actions:testing];
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end
