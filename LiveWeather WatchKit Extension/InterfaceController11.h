//
//  InterfaceController11.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController11 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp11Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text11Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi11Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind11Label;

- (IBAction)refresh11;


@end
