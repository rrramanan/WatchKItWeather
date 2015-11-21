//
//  InterfaceController8.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController8.h"
#import "YQL.h"
@interface InterfaceController8 ()

@end

@implementation InterfaceController8
YQL *yql8;
NSString *temp8;
NSString *text8;
NSString *date8;
NSString *humi8;
NSString *wind8;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    yql8 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 29083228"; //tutcorin
    NSDictionary *results = [yql8 query:queryString];
    
    
    temp8 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"tutcorin Temp %@",temp8);
    
    text8 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text8);
    
    date8 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date8);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 29083228"; //tutcorin
    NSDictionary *results1 = [yql8 query:queryString1];
    
    humi8 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi8);
    
    
    wind8 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind8);
    
    
    
    [_temp8Label setText:[NSString stringWithFormat:@"%@º F",temp8]];
    [_text8Label setText:text8];
    [_humi8Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi8]];
    [_wind8Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind8]];
    
    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh8 {
    
    yql8 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 29083228"; //tutcorin
    NSDictionary *results = [yql8 query:queryString];
    
    
    temp8 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"tutcorin Temp %@",temp8);
    
    text8 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text8);
    
    date8 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date8);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 29083228"; //tutcorin
    NSDictionary *results1 = [yql8 query:queryString1];
    
    humi8 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi8);
    
    
    wind8 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind8);
    
    
    
    [_temp8Label setText:[NSString stringWithFormat:@"%@º F",temp8]];
    [_text8Label setText:text8];
    [_humi8Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi8]];
    [_wind8Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind8]];
    

}
@end



