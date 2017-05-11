//
//  CommonAnnotation.m
//  ATMMap
//
//  Created by Admin on 10.05.17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "CustomAnnotation.h"
#import "CustomAnnotationView.h"

@implementation CustomAnnotation

+ (MKAnnotationView *)createViewAnnotationForMapView:(MKMapView *)mapView annotation:(id <MKAnnotation>)annotation
{
    /*MKAnnotationView *returnedAnnotationView =
     (CustomAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:NSStringFromClass([CustomAnnotation class])];
     if (returnedAnnotationView == nil)
     {
     returnedAnnotationView =
     [[CustomAnnotationView alloc] initWithAnnotation:annotation
     reuseIdentifier:NSStringFromClass([CustomAnnotation class])];
     }
     
     
     return returnedAnnotationView;
     */
    MKAnnotationView *returnedAnnotationView =
    (CustomAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:NSStringFromClass([CustomAnnotation class])];
    if (returnedAnnotationView == nil)
    {
        returnedAnnotationView =
        [[MKPinAnnotationView alloc] initWithAnnotation:annotation
                                        reuseIdentifier:NSStringFromClass([CustomAnnotation class])];
        
        ((MKPinAnnotationView *)returnedAnnotationView).pinTintColor = [MKPinAnnotationView purplePinColor];
        ((MKPinAnnotationView *)returnedAnnotationView).animatesDrop = YES;
        ((MKPinAnnotationView *)returnedAnnotationView).canShowCallout = YES;
    }
    
    return returnedAnnotationView;
    
}
// required if you set the MKPinAnnotationView's "canShowCallout" property to YES
- (NSString *)title
{
    return _mytitle;//@"Golden Gate Bridge";
}

// optional
- (NSString *)subtitle
{
    return _mysubtitle;//@"Opened: May 27, 1937";
}

@end
