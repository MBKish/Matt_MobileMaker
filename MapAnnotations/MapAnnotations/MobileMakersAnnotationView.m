//
//  MobileMakersAnnotationView.m
//  MapAnnotations
//
//  Created by Matthew Kish on 7/30/13.
//  Copyright (c) 2013 Matthew Kish. All rights reserved.
//

#import "MobileMakersAnnotationView.h"

@implementation MobileMakersAnnotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self) {
        self.image = [UIImage imageNamed:@"viewer"];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
