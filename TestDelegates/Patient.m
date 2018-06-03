//
//  Patient.m
//  TestDelegates
//
//  Created by Admin on 26.05.18.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou {
    
    BOOL IFellGood = arc4random() % 2;
    
    if (!IFellGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    return IFellGood;
}

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ makes a shot", self.name);
}

@end
