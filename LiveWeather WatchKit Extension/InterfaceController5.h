//
//  InterfaceController5.h
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController5 : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *temp5Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *text5Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *humi5Label;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *wind5Label;


- (IBAction)refresh5;

@end
