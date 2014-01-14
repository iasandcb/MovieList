//
//  ViewController.m
//  MovieList
//
//  Created by T on 2014. 1. 14..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"
#import "MovieCenter.h"

@interface ViewController ()<UITableViewDataSource, UITextFieldDelegate>

@end

@implementation ViewController {
    MovieCenter *_movieCenter;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_movieCenter getNumberOfMovies];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MOVIE_CELL" forIndexPath:indexPath];
    cell.textLabel.text = [_movieCenter getNameOfMovieAtIndex:indexPath.row];
    return cell;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _movieCenter = [MovieCenter sharedMovieCenter];
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
