//
//  ACYearDataSource.h
//  Pods
//
//  Created by Roger Misteli on 10.08.17.
//
//

#import <Foundation/Foundation.h>

@interface ACYearDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, assign) NSUInteger startYear;
@property (nonatomic, assign) NSUInteger endYear;

@end
