//
//  InterfaceController5.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController5.h"
#import "YQL.h"
@interface InterfaceController5 ()

@end

@implementation InterfaceController5
YQL *yql5;
NSString *temp5;
NSString *text5;
NSString *date5;
NSString *humi5;
NSString *wind5;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    yql5 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586687"; //Madurai
    NSDictionary *results = [yql5 query:queryString];
    
    
    temp5 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Madurai Temp %@",temp5);
    
    text5 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text5);
    
    date5 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date5);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586687"; //Madurai
    NSDictionary *results1 = [yql5 query:queryString1];
    
    humi5 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi5);
    
    
    wind5 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind5);
    
    
    
    [_temp5Label setText:[NSString stringWithFormat:@"%@º F",temp5]];
    [_text5Label setText:text5];
    [_humi5Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi5]];
    [_wind5Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind5]];

    
    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh5 {
    
    yql5 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586687"; //Madurai
    NSDictionary *results = [yql5 query:queryString];
    
    
    temp5 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Madurai Temp %@",temp5);
    
    text5 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text5);
    
    date5 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date5);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586687"; //Madurai
    NSDictionary *results1 = [yql5 query:queryString1];
    
    humi5 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi5);
    
    
    wind5 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind5);
    
    
    
    [_temp5Label setText:[NSString stringWithFormat:@"%@º F",temp5]];
    [_text5Label setText:text5];
    [_humi5Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi5]];
    [_wind5Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind5]];
    

}
@end



