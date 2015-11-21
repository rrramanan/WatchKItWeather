//
//  InterfaceController10.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController10.h"
#import "YQL.h"
@interface InterfaceController10 ()

@end

@implementation InterfaceController10
YQL *yql10;
NSString *temp10;
NSString *text10;
NSString *date10;
NSString *humi10;
NSString *wind10;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    yql10 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90887556"; //Conoor
    NSDictionary *results = [yql10 query:queryString];
    
    
    temp10 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Conoor Temp %@",temp10);
    
    text10 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text10);
    
    date10 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date10);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90887556"; //Conoor
    NSDictionary *results1 = [yql10 query:queryString1];
    
    humi10 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi10);
    
    
    wind10 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind10);
    
    
    
    [_temp10Label setText:[NSString stringWithFormat:@"%@º F",temp10]];
    [_text10Label setText:text10];
    [_humi10Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi10]];
    [_wind10Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind10]];
    
    
    

}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh10 {
    
    
    yql10 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90887556"; //Conoor
    NSDictionary *results = [yql10 query:queryString];
    
    
    temp10 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Conoor Temp %@",temp10);
    
    text10 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text10);
    
    date10 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date10);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90887556"; //Conoor
    NSDictionary *results1 = [yql10 query:queryString1];
    
    humi10 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi10);
    
    
    wind10 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind10);
    
    
    
    [_temp10Label setText:[NSString stringWithFormat:@"%@º F",temp10]];
    [_text10Label setText:text10];
    [_humi10Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi10]];
    [_wind10Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind10]];

}
@end



