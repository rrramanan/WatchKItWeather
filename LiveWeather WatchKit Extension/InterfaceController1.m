//
//  InterfaceController1.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController1.h"
#import "YQL.h"
@interface InterfaceController1 ()

@end

@implementation InterfaceController1
YQL *yql1;
NSString *temp1;
NSString *text1;
NSString *date1;
NSString *humi1;
NSString *wind1;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    yql1 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586701"; //trichy
    NSDictionary *results = [yql1 query:queryString];
    
    temp1 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Trichy Temp %@",temp1);
    
    text1 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text1);
    
    date1 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date1);
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586701";
    NSDictionary *results1 = [yql1 query:queryString1];
    
    humi1 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi1);
    
    
    wind1 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind1);
    
    
    [_temp1Label setText:[NSString stringWithFormat:@"%@º F",temp1]];
    [_text1Label setText:text1];
    [_humi1Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi1]];
    [_wind1Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind1]];
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh1 {
    
    yql1 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586701"; //trichy
    NSDictionary *results = [yql1 query:queryString];
    
    temp1 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Trichy Temp %@",temp1);
    
    text1 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text1);
    
    date1 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date1);
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586701";
    NSDictionary *results1 = [yql1 query:queryString1];
    
    humi1 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi1);
    
    
    wind1 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind1);
    
    
    [_temp1Label setText:[NSString stringWithFormat:@"%@º F",temp1]];
    [_text1Label setText:text1];
    [_humi1Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi1]];
    [_wind1Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind1]];
}
@end



