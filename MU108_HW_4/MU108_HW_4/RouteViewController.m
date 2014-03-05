//
//  RouteViewController.m
//  MU108_HW_4
//
//  Created by Admin on 05.03.14.
//  Copyright (c) 2014 AmbientLab. All rights reserved.
//

#import "RouteViewController.h"

@interface RouteViewController ()

@property(nonatomic,strong) NSArray* routeData;
@property(nonatomic,strong) NSArray* priceRoad;

@end

@implementation RouteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   self.routeData = @[@"ул Машерова",
                           @"Академика Федорова",
                           @"Комаровский рынок",
                           @"Лобанка, 99",
                           @"мкр-н Сухарево-2",
                           @"Сухаревская",
                           @"Горецкого",
                           @"НПО \"Центр\"",
                           @"Лесная",
                           @"Медвежино-2",
                           @"Медвежино-1",
                           @"Силикатный пер.",
                           @"дс Одоевского",
                           @"Я.Мавра",
                           @"Одоевского",
                           @"ун-сам \"Фрунзенский\"",
                           @"ст. м. \"Пушкинская\"",
                           @"Притыцкого",
                           @"Гусовского",
                           @"Пинская",
                           @"Кальварийская",
                           @"ст. м. \"Фрунзенская\"",@"ст. м. \"Немига\"",
                           @"Оперный театр",
                           @"Коммунистическая",
                           @"Богдановича",
                           @"Вокзал",
                           @"Свердлова",
                           @"Червенский рынок",
                           @"Аранская"];

    self.priceRoad = @[@"50 руб.",@"70 руб.",@"60 руб.",@"50 руб.",@"30 руб.",
                       @"50 руб.",@"20 руб.",@"60 руб.",@"50 руб.",@"30 руб.",
                       @"80 руб.",@"70 руб.",@"60 руб.",@"50 руб.",@"10 руб.",
                       @"50 руб.",@"70 руб.",@"60 руб.",@"70 руб.",@"30 руб.",
                       @"80 руб.",@"70 руб.",@"60 руб.",@"50 руб.",@"60 руб.",
                       @"50 руб.",@"50 руб.",@"40 руб.",@"50 руб.",@"30 руб."];
    
    id table[ [self.routeData count] ];
    
    routeCounter = 0;
    for (id item in self.routeData)
    {
        table[routeCounter++] = item;
    }
//    NSArray *routeData = [[NSArray alloc] initWithObjects:
//                          @"ул Машерова",@"Академика Федорова",@"Комаровский рынок",
//                          @"Лобанка, 99",@"мкр-н Сухарево-2",@"Сухаревская",
//                          @"Горецкого",@"НПО \"Центр\"",@"Лесная",
//                          @"Медвежино-2",@"Медвежино-1",@"Силикатный пер.",
//                          @"дс Одоевского",@"Я.Мавра",@"Одоевского",
//                          @"ун-сам \"Фрунзенский\"",@"ст. м. \"Пушкинская\"",
//                          @"Притыцкого",@"Гусовского",@"Пинская",
//                          @"Кальварийская",@"ст. м. \"Фрунзенская\"",@"ст. м. \"Немига\"",
//                          @"Оперный театр",@"Коммунистическая",@"Богдановича",
//                          @"Вокзал",@"Свердлова",
//                          @"Червенский рынок",
//                          @"Аранская",Nil];

    
//    NSMutableArray *priceRoad = [[NSMutableArray alloc] init];
//  
//    routeCounter = [routeData count];
//  
//    for (int i = 0 ; i < 30; i++) {
//        [priceRoad addObject:[NSString stringWithFormat:@"#%d руб.", arc4random()%100]];
//    }
//    NSLog(@"%@", priceRoad);
//
//    iarray = [priceRoad count];
//    
//    NSLog(@"%d", routeCounter);


    
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
    return routeCounter;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BasicCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...

    cell.textLabel.text = self.routeData[indexPath.row];
    cell.detailTextLabel.text = self.priceRoad[indexPath.row];
    
    return cell;
}

#pragma mark - Table view Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Selected row index %@",indexPath);

}


@end
