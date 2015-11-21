//
//  InterfaceController9.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController9 : WKInterfaceController


@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp9Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text9Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi9Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind9Label;

- (IBAction)refresh9;

@end
