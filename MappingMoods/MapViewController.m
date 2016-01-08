//
//  MapViewController.m
//  MappingMoods
//
//  Created by Robyn Van Deventer on 8/01/2016.
//  Copyright © 2016 Robyn Van Deventer. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>
#import <MagicalRecord/MagicalRecord.h>
#import "Mood.h"
#import "MoodViewController.h"

@interface MapViewController () <MKMapViewDelegate>

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:self.view.frame];
    mapView.delegate = self;
    [self.view addSubview:mapView];
    
    Mood *mood = [Mood MR_createEntity];
    mood.mood = @"Happy";
    mood.latitude = @(-37);
    mood.longitude = @(144);
    mood.notes = @"Was really happy today at this location";
    
//    [mapView addAnnotation:mood];
    [mapView showAnnotations:@[mood] animated:YES];
//    [mapView removeAnnotations:mapView.annotations];
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] init];
}

- (void)addButtonClicked
{
    
    MoodViewController *moodViewController = [[MoodViewController alloc] init];
    [self.navigationController pushViewController:moodViewController
                                         animated:YES];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"ReuseIdentifier"];
    if (!annotationView)
    {
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"ReuseIdentifier"];
    }
    
    annotationView.pinTintColor = [UIColor yellowColor];
    annotationView.canShowCallout = YES;
    
    return annotationView;
}

@end
