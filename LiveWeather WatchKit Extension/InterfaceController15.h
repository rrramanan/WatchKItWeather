//
//  InterfaceController15.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController15 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp15Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text15Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi15Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind15Label;

- (IBAction)refresh15;

@end
