//
//  Mood.h
//  MappingMoods
//
//  Created by Robyn Van Deventer on 8/01/2016.
//  Copyright © 2016 Robyn Van Deventer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Mood : NSManagedObject <MKAnnotation>

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "Mood+CoreDataProperties.h"
