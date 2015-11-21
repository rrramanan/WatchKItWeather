//
//  InterfaceController7.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController7 : WKInterfaceController


@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp7Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text7Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi7Label;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind7Label;

- (IBAction)refresh7;

@end
