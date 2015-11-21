//
//  InterfaceController.m
//  LiveWeather WatchKit Extension
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController.h"
#import "YQL.h"

@interface InterfaceController()

@end

@implementation InterfaceController
YQL *yql;
NSString *temp;
NSString *text;
NSString *date;
NSString *humi;
NSString *wind;


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    
    
    
    yql = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 2295424";//chennai
    NSDictionary *results = [yql query:queryString];
    NSLog(@"%@",results[@"query"][@"count"]);
    NSLog(@"%@",results[@"query"][@"results"]);
    
    temp = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Chennai Temp %@",temp);
    
    text = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text);
    
    date = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 2295424";
    NSDictionary *results1 = [yql query:queryString1];
    
    humi = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi);
    
    
    wind = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind);
    

    
    [_tempLabel setText:[NSString stringWithFormat:@"%@º F",temp]];
    [_textLabel setText:text];
    [_humiLabel setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi]];
    [_windLabel setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind]];
    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh {
    
    yql = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 2295424";
    NSDictionary *results = [yql query:queryString];
    NSLog(@"%@",results[@"query"][@"count"]);
    NSLog(@"%@",results[@"query"][@"results"]);
    
    temp = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Chennai Temp %@",temp);
    
    text = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text);
    
    date = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 2295424";
    NSDictionary *results1 = [yql query:queryString1];
    
    humi = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi);
    
    
    wind = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind);
    
    
    
    [_tempLabel setText:[NSString stringWithFormat:@"%@º F",temp]];
    [_textLabel setText:text];
    [_humiLabel setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi]];
    [_windLabel setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind]];
    

    
}
@end



