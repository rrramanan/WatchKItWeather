//
//  InterfaceController4.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController4 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp4Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text4Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi4Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind4Label;

- (IBAction)refresh4;

@end
