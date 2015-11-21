//
//  InterfaceController2.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController2.h"
#import "YQL.h"
@interface InterfaceController2 ()

@end

@implementation InterfaceController2
YQL *yql2;
NSString *temp2;
NSString *text2;
NSString *date2;
NSString *humi2;
NSString *wind2;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    yql2 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586686"; //Karur
    NSDictionary *results = [yql2 query:queryString];
    
    
    temp2 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Karur Temp %@",temp2);
    
    text2 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text2);
    
    date2 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date2);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586686"; //Karur
    NSDictionary *results1 = [yql2 query:queryString1];
    
    humi2 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi2);
    
    
    wind2 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind2);
    
    
    
    [_temp2Label setText:[NSString stringWithFormat:@"%@º F",temp2]];
    [_text2Label setText:text2];
    [_humi2Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi2]];
    [_wind2Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind2]];
    
    
    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh2 {
    
    
    yql2 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586686"; //Karur
    NSDictionary *results = [yql2 query:queryString];
    
    
    temp2 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Karur Temp %@",temp2);
    
    text2 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text2);
    
    date2 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date2);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586686"; //Karur
    NSDictionary *results1 = [yql2 query:queryString1];
    
    humi2 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi2);
    
    
    wind2 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind2);
    
    
    
    [_temp2Label setText:[NSString stringWithFormat:@"%@º F",temp2]];
    [_text2Label setText:text2];
    [_humi2Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi2]];
    [_wind2Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind2]];
    
    
}
@end



