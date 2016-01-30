//
//  FirstViewController.m
//  Practice_01
//
//  Created by TienVV on 1/30/16.
//  Copyright (c) 2016 TienVV. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Initiate list students
    [self initStudents];
}

-(void) initStudents {
    Student *student01 = [[Student alloc] initWithName:@"Vu Van Tien" age:24 avatar:@"avatar_tienvv" gender:@"Male" dateOfBirth:@"23/11/1992" andPhone:@"01672852936"];
    Student *student02 = [[Student alloc] initWithName:@"Nguyen Van A" age:20 avatar:@"avatar_tienvv" gender:@"Male" dateOfBirth:@"16/02/1996" andPhone:@"01672852936"];
    Student *student03 = [[Student alloc] initWithName:@"Tran Thi B" age:22 avatar:@"avatar_tienvv" gender:@"Female" dateOfBirth:@"12/12/1994" andPhone:@"01672852936"];
    Student *student04 = [[Student alloc] initWithName:@"Dao Van C" age:21 avatar:@"avatar_tienvv" gender:@"Male" dateOfBirth:@"06/12/1995" andPhone:@"01672852936"];
    Student *student05 = [[Student alloc] initWithName:@"Nguyen Thi H" age:24 avatar:@"avatar_tienvv" gender:@"Female" dateOfBirth:@"06/09/1992" andPhone:@"01672852936"];
    Student *student06 = [[Student alloc] initWithName:@"Nguyen Ngoc" age:21 avatar:@"avatar_tienvv" gender:@"Female" dateOfBirth:@"19/03/1995" andPhone:@"01672852936"];
    Student *student07 = [[Student alloc] initWithName:@"Nguyen Manh D" age:24 avatar:@"avatar_tienvv" gender:@"Male" dateOfBirth:@"03/12/1992" andPhone:@"01672852936"];
    Student *student08 = [[Student alloc] initWithName:@"Bui Thi X" age:24 avatar:@"avatar_tienvv" gender:@"Feale" dateOfBirth:@"12/06/1992" andPhone:@"01672852936"];
    Student *student09 = [[Student alloc] initWithName:@"Duong Van P" age:26 avatar:@"avatar_tienvv" gender:@"Male" dateOfBirth:@"08/11/1990" andPhone:@"01672852936"];
    Student *student10 = [[Student alloc] initWithName:@"Tran Dao Ngoc K" age:23 avatar:@"avatar_tienvv" gender:@"Female" dateOfBirth:@"06/06/1993" andPhone:@"01672852936"];
    
    // Add to list
    _listStudents = [[NSArray alloc] initWithObjects:student01, student02, student03, student04, student05, student06, student07, student08, student09, student10, nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_listStudents count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    StudentCell *studentCell = [tableView dequeueReusableCellWithIdentifier:@"studentCell"];
    if (!studentCell) {
        [tableView registerNib:[UINib nibWithNibName:@"StudentCell" bundle:nil] forCellReuseIdentifier:@"studentCell"];
        studentCell = [tableView dequeueReusableCellWithIdentifier:@"studentCell"];
    }
    
    Student *student = [_listStudents objectAtIndex:indexPath.row];
    
    studentCell.lbName.text = student.name;
    studentCell.lbDateOfBirth.text = student.dateOfBirth;
    studentCell.lbPhone.text = student.phone;
    studentCell.lbAge.text = [NSString stringWithFormat:@"%d", student.age];
    
    [studentCell.imgAvatar setImage:[UIImage imageNamed:student.avatarRes]];
    if ([@"Male" isEqual:student.gender]) {
        [studentCell.imgGender setImage:[UIImage imageNamed:@"ic_male"]];
    } else {
        [studentCell.imgGender setImage:[UIImage imageNamed:@"ic_female"]];
    }
    return studentCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

@end
