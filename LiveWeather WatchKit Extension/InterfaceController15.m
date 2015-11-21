//
//  InterfaceController15.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController15.h"
#import "YQL.h"
@interface InterfaceController15 ()

@end

@implementation InterfaceController15
YQL *yql15;
NSString *temp15;
NSString *text15;
NSString *date15;
NSString *humi15;
NSString *wind15;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    yql15 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586683"; //Kanchipuram
    NSDictionary *results = [yql15 query:queryString];
    
    
    temp15 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Kanchipuram Temp %@",temp15);
    
    text15 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text15);
    
    date15 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date15);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586683"; //Kanchipuram
    NSDictionary *results1 = [yql15 query:queryString1];
    
    humi15 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi15);
    
    
    wind15 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind15);
    
    
    
    [_temp15Label setText:[NSString stringWithFormat:@"%@º F",temp15]];
    [_text15Label setText:text15];
    [_humi15Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi15]];
    [_wind15Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind15]];
    

    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh15 {
    yql15 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586683"; //Kanchipuram
    NSDictionary *results = [yql15 query:queryString];
    
    
    temp15 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Kanchipuram Temp %@",temp15);
    
    text15 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text15);
    
    date15 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date15);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586683"; //Kanchipuram
    NSDictionary *results1 = [yql15 query:queryString1];
    
    humi15 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi15);
    
    
    wind15 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind15);
    
    
    
    [_temp15Label setText:[NSString stringWithFormat:@"%@º F",temp15]];
    [_text15Label setText:text15];
    [_humi15Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi15]];
    [_wind15Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind15]];
    

}
@end



