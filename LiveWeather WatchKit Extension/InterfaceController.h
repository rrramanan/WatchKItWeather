//
//  InterfaceController.h
//  LiveWeather WatchKit Extension
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *tempLabel;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *textLabel;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humiLabel;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *windLabel;

- (IBAction)refresh;

@end
