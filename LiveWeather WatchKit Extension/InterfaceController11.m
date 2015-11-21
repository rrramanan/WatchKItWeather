//
//  InterfaceController11.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController11.h"
#import "YQL.h"
@interface InterfaceController11 ()

@end

@implementation InterfaceController11
YQL *yql11;
NSString *temp11;
NSString *text11;
NSString *date11;
NSString *humi11;
NSString *wind11;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    
    yql11 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90886944"; //Yercaud
    NSDictionary *results = [yql11 query:queryString];
    
    
    temp11 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Yercaud Temp %@",temp11);
    
    text11 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text11);
    
    date11 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date11);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90886944"; //Yercaud
    NSDictionary *results1 = [yql11 query:queryString1];
    
    humi11 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi11);
    
    
    wind11 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind11);
    
    
    
    [_temp11Label setText:[NSString stringWithFormat:@"%@º F",temp11]];
    [_text11Label setText:text11];
    [_humi11Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi11]];
    [_wind11Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind11]];
    
    
    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh11 {
    
    yql11 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90886944"; //Yercaud
    NSDictionary *results = [yql11 query:queryString];
    
    
    temp11 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Yercaud Temp %@",temp11);
    
    text11 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text11);
    
    date11 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date11);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90886944"; //Yercaud
    NSDictionary *results1 = [yql11 query:queryString1];
    
    humi11 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi11);
    
    
    wind11 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind11);
    
    
    
    [_temp11Label setText:[NSString stringWithFormat:@"%@º F",temp11]];
    [_text11Label setText:text11];
    [_humi11Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi11]];
    [_wind11Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind11]];

}
@end



