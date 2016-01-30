//
//  Student.m
//  Practice_01
//
//  Created by TienVV on 1/30/16.
//  Copyright (c) 2016 TienVV. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id) initWithName:(NSString*) name
                age:(int) age
             avatar:(NSString*) avatarRes
             gender:(NSString*) gender
        dateOfBirth:(NSString*) dateOfBirth
           andPhone:(NSString*) phone {
    if (self == [super init]) {
        _name = name;
        _age = age;
        _avatarRes = avatarRes;
        _gender = gender;
        _dateOfBirth = dateOfBirth;
        _phone = phone;
    }
    return self;
}

@end
