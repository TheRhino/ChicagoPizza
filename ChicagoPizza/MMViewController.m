//
//  MMViewController.m
//  ChicagoPizza
//
//  Created by RHINO on 2/12/13.
//  Copyright (c) 2013 RHINO. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()

//Decalare NSDictionary pointers

{
    NSDictionary *chicagoPizzaPlace;
    NSDictionary *pizza1;
    NSDictionary *pizza2;
    NSDictionary *pizza3;
    NSDictionary *pizza4;
    NSDictionary *pizza5;
    NSDictionary *pizza6;
    NSDictionary *pizza7;
    NSDictionary *pizza8;
    NSDictionary *pizza9;
    NSDictionary *pizza10;
    NSDictionary *pizza11;
    NSDictionary *pizza12;
}

@end

@implementation MMViewController

//@synthesize chicagoPizzaPlaces;

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //name - key - object
    
    pizza1 = @{@"name" : @"Ginos",
              @"phone" : @"312-988-4200",
              };
    
    pizza2 = @{@"name" : @"Lou Malnati's",
              @"phone" : @"312-828-9800",
              };
                               
    pizza3 = @{@"name" : @"La Madia",
              @"phone" : @"312-329-0400",
              };
                               
    pizza4 = @{@"name" : @"Quartino",
              @"phone" : @"312-698-5000",
              };
                             
    pizza5 = @{@"name" : @"Giodanos",
              @"phone" : @"312-951-0747",
              };
                               
    pizza6 = @{@"name" : @"Pizanos",
              @"phone" : @"312-751-1766",
              };
                             
    pizza7 = @{@"name" : @"5 Boroughs",
              @"phone" : @"312-988-9009",
              };
                             
    pizza8 = @{@"name" : @"Bricks",
              @"phone" : @"312-255-0851",
              };
                               
    pizza9 = @{@"name" : @"State Street",
              @"phone" : @"312-624-8270",
              };
                             
    pizza10 = @{@"name" : @"Bella Bacinos",
               @"phone" : @"312-263-2350",
               };
                              
    pizza11 = @{@"name" : @"Exchequer",
               @"phone" : @"312-939-5633",
               };
                              
    pizza12 = @{@"name" : @"Reggies",
               @"phone" : @"312-939-4423",
               };
    
    chicagoPizzaPlace = @{
                         @"0" : pizza1,
                         @"1" : pizza2,
                         @"2" : pizza3,
                         @"3" : pizza4,
                         @"4" : pizza5,
                         @"5" : pizza6,
                         @"6" : pizza7,
                         @"7" : pizza8,
                         @"8" : pizza9,
                        @"9" : pizza10,
                        @"10" : pizza11,
                        @"11" : pizza12,
                        };
    
    //NSLog(@"here is the name for the first pizza place:%@", [chicagoPizzaPlace valueForKeyPath:@"1.name"]);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    //return [people count];
    return [chicagoPizzaPlace count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell* tableViewCell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"MMTableViewReuseIdentifier"];
    
    if (tableViewCell == nil) {
        
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MMTableViewReuseIdentifier"];
    }
    
    NSString *indexStringPath = [NSString stringWithFormat:@"%d.name", indexPath.row];
    tableViewCell.textLabel.text = [chicagoPizzaPlace valueForKeyPath: indexStringPath];
    
    return tableViewCell;
}

- (void)didReceiveMemoryWarning;
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end