//
//  Doctor.m
//  TestDelegates
//
//  Created by Admin on 26.05.18.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

#pragma mark - PatientDelegate

- (void) patientFeelsBad:(Patient*) currPatient {
    
    NSLog(@"Patient  %@ feels bad", currPatient.name);
    
    if (currPatient.temperatute > 37 && currPatient.temperatute < 40.f) {
        [currPatient takePill];
    } else if (currPatient.temperatute >= 40.f) {
        [currPatient makeShot];
    } else {
        NSLog(@"Patient %@ should rest", currPatient.name);
    }
    
}

- (void) patient:(Patient*) currPatient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question %@", currPatient.name, question);
}

@end
