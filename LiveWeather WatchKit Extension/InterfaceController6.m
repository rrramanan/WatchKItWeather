//
//  InterfaceController6.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController6.h"
#import "YQL.h"
@interface InterfaceController6 ()

@end

@implementation InterfaceController6
YQL *yql6;
NSString *temp6;
NSString *text6;
NSString *date6;
NSString *humi6;
NSString *wind6;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    yql6 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586684"; //Kanyakumari
    NSDictionary *results = [yql6 query:queryString];
    
    
    temp6 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Kanyakumari Temp %@",temp6);
    
    text6 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text6);
    
    date6 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date6);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586684"; //Kanyakumari
    NSDictionary *results1 = [yql6 query:queryString1];
    
    humi6 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi6);
    
    
    wind6 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind6);
    
    
    
    [_temp6Label setText:[NSString stringWithFormat:@"%@º F",temp6]];
    [_text6Label setText:text6];
    [_humi6Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi6]];
    [_wind6Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind6]];

    
    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh6 {
    
    yql6 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586684"; //Kanyakumari
    NSDictionary *results = [yql6 query:queryString];
    
    
    temp6 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Kanyakumari Temp %@",temp6);
    
    text6 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text6);
    
    date6 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date6);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586684"; //Kanyakumari
    NSDictionary *results1 = [yql6 query:queryString1];
    
    humi6 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi6);
    
    
    wind6 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind6);
    
    
    
    [_temp6Label setText:[NSString stringWithFormat:@"%@º F",temp6]];
    [_text6Label setText:text6];
    [_humi6Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi6]];
    [_wind6Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind6]];
    
}
@end



