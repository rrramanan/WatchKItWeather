//
//  InterfaceController16.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController16 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp16Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text16Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi16Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind16Label;

- (IBAction)refresh16;


@end
