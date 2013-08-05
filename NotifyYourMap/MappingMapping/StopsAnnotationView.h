//
//  StopsAnnotationView.h
//  MappingMapping
//
//  Created by Matthew Kish on 7/30/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface StopsAnnotationView : MKAnnotationView

- (void) newColor: (NSNotification *)notification;

@end
