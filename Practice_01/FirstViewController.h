//
//  FirstViewController.h
//  Practice_01
//
//  Created by TienVV on 1/30/16.
//  Copyright (c) 2016 TienVV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"
#import "StudentCell.h"

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *listStudents;

@end

