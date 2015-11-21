//
//  InterfaceController4.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController4.h"
#import "YQL.h"
@interface InterfaceController4 ()

@end

@implementation InterfaceController4
YQL *yql4;
NSString *temp4;
NSString *text4;
NSString *date4;
NSString *humi4;
NSString *wind4;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    yql4 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586678"; //CBE
    NSDictionary *results = [yql4 query:queryString];
    
    
    temp4 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"CBE Temp %@",temp4);
    
    text4 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text4);
    
    date4 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date4);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586678"; //CBE
    NSDictionary *results1 = [yql4 query:queryString1];
    
    humi4 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi4);
    
    
    wind4 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind4);
    
    
    
    [_temp4Label setText:[NSString stringWithFormat:@"%@º F",temp4]];
    [_text4Label setText:text4];
    [_humi4Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi4]];
    [_wind4Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind4]];
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh4 {
    
    yql4 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586678"; //CBE
    NSDictionary *results = [yql4 query:queryString];
    
    
    temp4 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"CBE Temp %@",temp4);
    
    text4 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text4);
    
    date4 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date4);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586678"; //CBE
    NSDictionary *results1 = [yql4 query:queryString1];
    
    humi4 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi4);
    
    
    wind4 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind4);
    
    
    
    [_temp4Label setText:[NSString stringWithFormat:@"%@º F",temp4]];
    [_text4Label setText:text4];
    [_humi4Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi4]];
    [_wind4Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind4]];
    
}
@end



