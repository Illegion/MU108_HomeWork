//
//  RouteViewController.m
//  MU108_HW_4
//
//  Created by Admin on 05.03.14.
//  Copyright (c) 2014 AmbientLab. All rights reserved.
//

#import "RouteViewController.h"
#import "AFNetworking.h"
#import "MBProgressHUD.h"


@interface RouteViewController ()

@property(nonatomic,strong) NSArray* routeData;
@property(nonatomic,strong) NSArray* priceRoad;

@end

@implementation RouteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];

[manager GET:@"http://marshrutki.com.ua/mu/routes.php" parameters:Nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
    [MBProgressHUD hideAllHUDsForView:self.tableView animated:YES];
    NSLog(@"%@",responseObject);
    self.routeData = (NSArray*)responseObject;
    [self.tableView reloadData];
    
} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
    NSLog(@"%@",error);
     [MBProgressHUD hideAllHUDsForView:self.tableView animated:YES];
}];
[MBProgressHUD showHUDAddedTo:self.tableView animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.routeData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BasicCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...

    cell.textLabel.text = self.routeData[indexPath.row ][@"route_title"];
    cell.detailTextLabel.text = self.routeData[indexPath.row ][@"route_price"];

    return cell;
}

#pragma mark - Table view Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Selected row index %@",indexPath);
    NSLog(@"Title of row %@",self.routeData[indexPath.item]);
}



@end