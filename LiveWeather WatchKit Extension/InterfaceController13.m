//
//  InterfaceController13.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController13.h"
#import "YQL.h"
@interface InterfaceController13 ()

@end

@implementation InterfaceController13
YQL *yql13;
NSString *temp13;
NSString *text13;
NSString *date13;
NSString *humi13;
NSString *wind13;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    yql13 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586702"; //Tirunelveli
    NSDictionary *results = [yql13 query:queryString];
    
    
    temp13 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Tirunelveli Temp %@",temp13);
    
    text13 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text13);
    
    date13 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date13);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586702"; //Tirunelveli
    NSDictionary *results1 = [yql13 query:queryString1];
    
    humi13 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi13);
    
    
    wind13 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind13);
    
    
    
    [_temp13Label setText:[NSString stringWithFormat:@"%@º F",temp13]];
    [_text13Label setText:text13];
    [_humi13Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi13]];
    [_wind13Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind13]];

    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh13 {
    yql13 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586702"; //Tirunelveli
    NSDictionary *results = [yql13 query:queryString];
    
    
    temp13 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Tirunelveli Temp %@",temp13);
    
    text13 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text13);
    
    date13 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date13);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586702"; //Tirunelveli
    NSDictionary *results1 = [yql13 query:queryString1];
    
    humi13 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi13);
    
    
    wind13 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind13);
    
    
    
    [_temp13Label setText:[NSString stringWithFormat:@"%@º F",temp13]];
    [_text13Label setText:text13];
    [_humi13Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi13]];
    [_wind13Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind13]];
}
@end



