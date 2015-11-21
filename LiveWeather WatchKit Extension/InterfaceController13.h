//
//  InterfaceController13.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController13 : WKInterfaceController


@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp13Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text13Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi13Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind13Label;

- (IBAction)refresh13;

@end
