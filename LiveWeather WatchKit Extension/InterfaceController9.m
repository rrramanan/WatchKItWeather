//
//  InterfaceController9.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController9.h"
#import "YQL.h"
@interface InterfaceController9 ()

@end

@implementation InterfaceController9
YQL *yql9;
NSString *temp9;
NSString *text9;
NSString *date9;
NSString *humi9;
NSString *wind9;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    
    yql9 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90883197"; //Kodaikanal
    NSDictionary *results = [yql9 query:queryString];
    
    
    temp9 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Kodaikanal Temp %@",temp9);
    
    text9 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text9);
    
    date9 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date9);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90883197"; //Kodaikanal
    NSDictionary *results1 = [yql9 query:queryString1];
    
    humi9 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi9);
    
    
    wind9 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind9);
    
    
    
    [_temp9Label setText:[NSString stringWithFormat:@"%@º F",temp9]];
    [_text9Label setText:text9];
    [_humi9Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi9]];
    [_wind9Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind9]];
    

}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh9 {
    
    yql9 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 90883197"; //Kodaikanal
    NSDictionary *results = [yql9 query:queryString];
    
    
    temp9 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Kodaikanal Temp %@",temp9);
    
    text9 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text9);
    
    date9 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date9);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 90883197"; //Kodaikanal
    NSDictionary *results1 = [yql9 query:queryString1];
    
    humi9 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi9);
    
    
    wind9 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind9);
    
    
    
    [_temp9Label setText:[NSString stringWithFormat:@"%@º F",temp9]];
    [_text9Label setText:text9];
    [_humi9Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi9]];
    [_wind9Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind9]];
    

}
@end



