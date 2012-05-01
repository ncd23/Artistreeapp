//
//  ViewController.m
//  Artistreeapp
//
//  Created by Galina Rybatsky on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize biolabel, artists;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self createArtists];
    
    Artists* artistToDisplay = [artists objectAtIndex:0];
    biolabel.text = artistToDisplay.bio;
    
    

}

-(void)createArtists
{
    Artists* davinci;
    davinci = [[Artists alloc] init];
    davinci.bio = @"djaflfjdas;lkfjas;dlfkjaf";
    
    Artists* michelangelo;
    michelangelo = [[Artists alloc] init];
    michelangelo.bio = @"riutworueirquro";
    
    self.artists = [[NSMutableArray alloc]initWithObjects: davinci, michelangelo, nil]; 
    
}

- (void)viewDidUnload
{
    [self setBiolabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
