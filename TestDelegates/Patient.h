//
//  Patient.h
//  TestDelegates
//
//  Created by Admin on 26.05.18.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperatute;
@property (weak, nonatomic) id <PatientDelegate> delegate ;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;


@end

@protocol PatientDelegate <NSObject>

@required
- (void) patientFeelsBad:(Patient*) currPatient;
- (void) patient:(Patient*) currPatient hasQuestion:(NSString*) question;

@end
