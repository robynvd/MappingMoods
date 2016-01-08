//
//  Mood+CoreDataProperties.h
//  MappingMoods
//
//  Created by Robyn Van Deventer on 8/01/2016.
//  Copyright © 2016 Robyn Van Deventer. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Mood.h"

NS_ASSUME_NONNULL_BEGIN

@interface Mood (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *mood;
@property (nullable, nonatomic, retain) NSNumber *latitude;
@property (nullable, nonatomic, retain) NSNumber *longitude;
@property (nullable, nonatomic, retain) NSString *notes;

@end

NS_ASSUME_NONNULL_END
