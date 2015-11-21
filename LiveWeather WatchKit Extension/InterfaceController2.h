//
//  InterfaceController2.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController2 : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp2Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text2Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi2Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind2Label;
- (IBAction)refresh2;

@end
