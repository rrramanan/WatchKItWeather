//
//  InterfaceController1.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController1 : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp1Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text1Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi1Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind1Label;
- (IBAction)refresh1;

@end
