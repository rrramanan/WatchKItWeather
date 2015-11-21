//
//  InterfaceController14.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController14 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp14Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text14Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi14Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind14Label;

- (IBAction)refresh14;


@end
