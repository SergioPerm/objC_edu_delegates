//
//  Doctor.h
//  TestDelegates
//
//  Created by Admin on 26.05.18.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

@end
