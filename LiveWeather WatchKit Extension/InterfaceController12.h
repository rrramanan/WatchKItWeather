//
//  InterfaceController12.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController12 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp12Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text12Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi12Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind12Label;

- (IBAction)refresh12;


@end
