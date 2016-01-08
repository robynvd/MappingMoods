//
//  Mood.m
//  MappingMoods
//
//  Created by Robyn Van Deventer on 8/01/2016.
//  Copyright © 2016 Robyn Van Deventer. All rights reserved.
//

#import "Mood.h"

@implementation Mood

- (CLLocationCoordinate2D)coordinate
{
    return CLLocationCoordinate2DMake([self.latitude doubleValue], [self.longitude doubleValue]);
}

- (NSString *)title
{
    return self.mood;
}

- (NSString *)subtitle
{
    return self.notes;
}

@end
