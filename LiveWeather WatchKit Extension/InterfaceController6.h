//
//  InterfaceController6.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController6 : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp6Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text6Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi6Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind6Label;


- (IBAction)refresh6;


@end
