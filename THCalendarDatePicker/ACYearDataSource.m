//
//  ACYearDataSource.m
//  Pods
//
//  Created by Roger Misteli on 10.08.17.
//
//

#import "ACYearDataSource.h"

@implementation ACYearDataSource

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if (self.endYear < self.startYear) {
    NSUInteger temp = self.startYear;
    self.startYear = self.endYear;
    self.endYear = temp;
  }
  return self.endYear - self.startYear + 1;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"yearCell"];
  if (nil == cell) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"yearCell"];
  }
  cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long) (self.startYear + indexPath.row)];
  cell.textLabel.textAlignment = NSTextAlignmentCenter;
  cell.textLabel.font = [UIFont systemFontOfSize:14];
  cell.textLabel.textColor = [UIColor darkGrayColor];
  return cell;
}

@end
