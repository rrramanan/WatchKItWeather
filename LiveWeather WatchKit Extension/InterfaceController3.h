//
//  InterfaceController3.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController3 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp3Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text3Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi3Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind3Label;

- (IBAction)refresh3;

@end
