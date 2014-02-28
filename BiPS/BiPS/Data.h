//
//  Data.h
//  BiPS
//
//  Created by Han Jin on 2/17/14.
//  Copyright (c) 2014 RDV Labs LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#define keyDefaultData @"New Data"
#define keyAllData @"All Data"
#define keyDetailData @"Detail Data"

@interface Data : NSObject

+(NSMutableDictionary *)getAllData;
+(void)setCurrentKey:(NSString *)key;
+(NSString *)getCurrentKey;
+(void)setDataForCurrentKey:(NSString *)data;
+(void)setData:(NSString *)data forKey:(NSString *)key;
+(void)removeDataForKey: (NSString *)key;
+(void)safeData;

//if we want to safe all data to a file
//+(NSString *)filePath;

@end
