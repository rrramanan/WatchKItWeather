//
//  InterfaceController16.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController16.h"
#import "YQL.h"
@interface InterfaceController16 ()

@end

@implementation InterfaceController16
YQL *yql16;
NSString *temp16;
NSString *text16;
NSString *date16;
NSString *humi16;
NSString *wind16;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    yql16 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 2295376"; //Nagarcoil
    NSDictionary *results = [yql16 query:queryString];
    
    
    temp16 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Nagarcoil Temp %@",temp16);
    
    text16 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text16);
    
    date16 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date16);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 2295376"; //Nagarcoil
    NSDictionary *results1 = [yql16 query:queryString1];
    
    humi16 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi16);
    
    
    wind16 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind16);
    
    
    
    [_temp16Label setText:[NSString stringWithFormat:@"%@º F",temp16]];
    [_text16Label setText:text16];
    [_humi16Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi16]];
    [_wind16Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind16]];

    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh16 {
    
    yql16 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 2295376"; //Nagarcoil
    NSDictionary *results = [yql16 query:queryString];
    
    
    temp16 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Nagarcoil Temp %@",temp16);
    
    text16 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text16);
    
    date16 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date16);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 2295376"; //Nagarcoil
    NSDictionary *results1 = [yql16 query:queryString1];
    
    humi16 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi16);
    
    
    wind16 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind16);
    
    
    
    [_temp16Label setText:[NSString stringWithFormat:@"%@º F",temp16]];
    [_text16Label setText:text16];
    [_humi16Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi16]];
    [_wind16Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind16]];

}
@end



