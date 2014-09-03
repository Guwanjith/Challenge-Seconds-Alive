//
//  main.m
//  Challenge: Seconds Alive
//
//  Created by Guwanjith Tennekoon on 8/15/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1991];
        [comps setMonth:11];
        [comps setDay:15];
        [comps setHour:5];
        [comps setMinute:30];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        //Dates to Compare
        NSDate *myBirthday = [g dateFromComponents:comps];
        NSDate *now = [NSDate date];
        
        double secondsBetween = [now timeIntervalSinceDate:myBirthday];
        
        NSLog(@"There are %f seconds between your birthday and today.\n", secondsBetween);
        
    }
    return 0;
}

