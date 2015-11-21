//
//  InterfaceController8.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController8 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp8Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text8Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi8Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind8Label;

- (IBAction)refresh8;

@end
