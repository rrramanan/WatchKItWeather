//
//  InterfaceController7.m
//  LiveWeather
//
//  Created by Vinod Ramanathan on 20/11/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController7.h"
#import "YQL.h"
@interface InterfaceController7 ()

@end

@implementation InterfaceController7
YQL *yql7;
NSString *temp7;
NSString *text7;
NSString *date7;
NSString *humi7;
NSString *wind7;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    yql7 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586696"; //Salem
    NSDictionary *results = [yql7 query:queryString];
    
    
    temp7 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Salem Temp %@",temp7);
    
    text7 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text7);
    
    date7 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date7);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586696"; //Salem
    NSDictionary *results1 = [yql7 query:queryString1];
    
    humi7 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi7);
    
    
    wind7 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind7);
    
    
    
    [_temp7Label setText:[NSString stringWithFormat:@"%@º F",temp7]];
    [_text7Label setText:text7];
    [_humi7Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi7]];
    [_wind7Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind7]];
    
    

}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)refresh7 {
    
    
    yql7 = [[YQL alloc] init];
    NSString *queryString = @"select item.condition from weather.forecast where woeid = 12586696"; //Salem
    NSDictionary *results = [yql7 query:queryString];
    
    
    temp7 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"temp"]];
    
    NSLog(@"Salem Temp %@",temp7);
    
    text7 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"text"]];
    
    NSLog(@"Status %@",text7);
    
    date7 = [NSString stringWithFormat:@"%@",results[@"query"][@"results"][@"channel"][@"item"][@"condition"][@"date"]];
    
    NSLog(@"Date %@",date7);
    
    
    
    
    NSString *queryString1 = @"select * from weather.forecast where woeid  = 12586696"; //Salem
    NSDictionary *results1 = [yql7 query:queryString1];
    
    humi7 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"atmosphere"][@"humidity"]];
    
    NSLog(@"Humidity %@",humi7);
    
    
    wind7 = [NSString stringWithFormat:@"%@",results1[@"query"][@"results"][@"channel"][@"wind"][@"speed"]];
    
    NSLog(@"Wind %@",wind7);
    
    
    
    [_temp7Label setText:[NSString stringWithFormat:@"%@º F",temp7]];
    [_text7Label setText:text7];
    [_humi7Label setText:[NSString stringWithFormat:@"Humidity: %@ %%",humi7]];
    [_wind7Label setText:[NSString stringWithFormat:@"Wind: %@ km/h",wind7]];
}
@end



