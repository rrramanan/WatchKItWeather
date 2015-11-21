//
//  InterfaceController10.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController10 : WKInterfaceController


@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp10Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text10Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi10Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind10Label;

- (IBAction)refresh10;

@end
