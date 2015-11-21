//
//  InterfaceController3.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController3.h"
#import "YQL.h"
@interface InterfaceController3 ()

@end

@implementation InterfaceController3
YQL *yql3;
NSString *temp3;
NSString *text3;
NSString *date3;
NSString *humi3;
NSString *wind3;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    yql3 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586682"; //Erode
    NSDictionary *results = [yql3 query:queryString];
    
    
    temp3 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Erode Temp %@",temp3);
    
    text3 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text3);
    
    date3 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date3);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586682"; //Erode
    NSDictionary *results1 = [yql3 query:queryString1];
    
    humi3 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi3);
    
    
    wind3 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind3);
    
    
    
    [_temp3Label setText:[NSString stringWithFormat:@"%@º F",temp3]];
    [_text3Label setText:text3];
    [_humi3Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi3]];
    [_wind3Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind3]];

    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh3 {
    yql3 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586682"; //Erode
    NSDictionary *results = [yql3 query:queryString];
    
    
    temp3 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Erode Temp %@",temp3);
    
    text3 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text3);
    
    date3 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date3);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586682"; //Erode
    NSDictionary *results1 = [yql3 query:queryString1];
    
    humi3 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi3);
    
    
    wind3 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind3);
    
    
    
    [_temp3Label setText:[NSString stringWithFormat:@"%@º F",temp3]];
    [_text3Label setText:text3];
    [_humi3Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi3]];
    [_wind3Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind3]];

    
}
@end



