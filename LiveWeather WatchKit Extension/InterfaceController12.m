//
//  InterfaceController12.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController12.h"
#import "YQL.h"
@interface InterfaceController12 ()

@end

@implementation InterfaceController12
YQL *yql12;
NSString *temp12;
NSString *text12;
NSString *date12;
NSString *humi12;
NSString *wind12;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    yql12 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90886355"; //Rameswaram
    NSDictionary *results = [yql12 query:queryString];
    
    
    temp12 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Rameswaram Temp %@",temp12);
    
    text12 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text12);
    
    date12 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date12);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90886355"; //Rameswaram
    NSDictionary *results1 = [yql12 query:queryString1];
    
    humi12 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi12);
    
    
    wind12 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind12);
    
    
    
    [_temp12Label setText:[NSString stringWithFormat:@"%@º F",temp12]];
    [_text12Label setText:text12];
    [_humi12Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi12]];
    [_wind12Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind12]];
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh12 {
    
    yql12 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90886355"; //Rameswaram
    NSDictionary *results = [yql12 query:queryString];
    
    
    temp12 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Rameswaram Temp %@",temp12);
    
    text12 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text12);
    
    date12 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date12);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90886355"; //Rameswaram
    NSDictionary *results1 = [yql12 query:queryString1];
    
    humi12 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi12);
    
    
    wind12 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind12);
    
    
    
    [_temp12Label setText:[NSString stringWithFormat:@"%@º F",temp12]];
    [_text12Label setText:text12];
    [_humi12Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi12]];
    [_wind12Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind12]];
    

}
@end



