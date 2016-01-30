//
//  Student.h
//  Practice_01
//
//  Created by TienVV on 1/30/16.
//  Copyright (c) 2016 TienVV. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *avatarRes;
@property (nonatomic) int age;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSString *dateOfBirth;
@property (nonatomic, strong) NSString *phone;

- (id) initWithName:(NSString*) name
                age:(int) age
             avatar:(NSString*) avatarRes
             gender:(NSString*) gender
        dateOfBirth:(NSString*) dateOfBirth
           andPhone:(NSString*) phone;

@end
