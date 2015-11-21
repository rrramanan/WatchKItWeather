//
//  InterfaceController14.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController14.h"
#import "YQL.h"
@interface InterfaceController14 ()

@end

@implementation InterfaceController14
YQL *yql14;
NSString *temp14;
NSString *text14;
NSString *date14;
NSString *humi14;
NSString *wind14;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    yql14 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90884759"; //Ooty
    NSDictionary *results = [yql14 query:queryString];
    
    
    temp14 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Ooty Temp %@",temp14);
    
    text14 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text14);
    
    date14 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date14);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90884759"; //Ooty
    NSDictionary *results1 = [yql14 query:queryString1];
    
    humi14 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi14);
    
    
    wind14 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind14);
    
    
    
    [_temp14Label setText:[NSString stringWithFormat:@"%@º F",temp14]];
    [_text14Label setText:text14];
    [_humi14Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi14]];
    [_wind14Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind14]];
    

    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh14 {
    yql14 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90884759"; //Ooty
    NSDictionary *results = [yql14 query:queryString];
    
    
    temp14 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Ooty Temp %@",temp14);
    
    text14 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text14);
    
    date14 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date14);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90884759"; //Ooty
    NSDictionary *results1 = [yql14 query:queryString1];
    
    humi14 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi14);
    
    
    wind14 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind14);
    
    
    
    [_temp14Label setText:[NSString stringWithFormat:@"%@º F",temp14]];
    [_text14Label setText:text14];
    [_humi14Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi14]];
    [_wind14Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind14]];
}
@end



