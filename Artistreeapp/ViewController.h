//
//  ViewController.h
//  Artistreeapp
//
//  Created by Galina Rybatsky on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Artists.h"

@interface ViewController : UIViewController
{
    NSMutableArray* connections;
    NSMutableArray* artists;
}
@property (strong, nonatomic) IBOutlet UILabel *biolabel;
@property (readwrite, strong) NSMutableArray* artists;
@property (readwrite, strong) NSMutableArray* connections;
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;

- (IBAction)connectArtists:(id)sender;

-(void)createArtists;

@end
