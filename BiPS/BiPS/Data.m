//
//  Data.m
//  BiPS
//
//  Created by Han Jin on 2/17/14.
//  Copyright (c) 2014 RDV Labs LLC. All rights reserved.
//

#import "Data.h"

@implementation Data

static NSMutableDictionary *allData;
static NSString *currentKey;

+(NSMutableDictionary *)getAllData {
    
    if (allData==nil) {
        allData = [[NSMutableDictionary alloc]initWithDictionary:[[NSUserDefaults standardUserDefaults]dictionaryForKey:keyAllData]];

//Initialize new dictionary by creating a dictionary in file
//        allData = [[NSMutableDictionary alloc]initWithDictionary:[[NSDictionary dictionaryWithContentsOfFile:[self filePath];
    }
    return allData;
    
}
+(void)setCurrentKey:(NSString *)key{
    currentKey=key;
}
+(NSString *)getCurrentKey{
    return currentKey;
}

+(void)setDataForCurrentKey:(NSString *)data{
    [self setData:data forKey:currentKey];
    
}
+(void)setData:(NSString *)data forKey:(NSString *)key{
    [allData setObject:data forKey:key];
}
+(void)removeDataForKey: (NSString *)key{
    [allData removeObjectForKey:key];
}

+(void)safeData{
    //safe data to persistent storage
    [[NSUserDefaults standardUserDefaults]setObject:allData forKey:keyAllData];
    
//if you use file to store data instead of userdefaults
//    [allData writeToFile:[self filepath] atomically:YES];
}

//Saving data onto a file instead of userdefault
//+(NSString *)filePath{
//    NSArray *directories = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
//    NSString *documents = [directories objectAtIndex:0];
//    return [documents stringByAppendingPathComponent:keyAllData];
//}

@end
