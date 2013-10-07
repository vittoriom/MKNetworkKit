//
//  NSArray+RequestEncoding.m
//  Bild.de-iPad
//
//  Created by Vittorio Monaco on 07/10/13.
//  Copyright (c) 2013 Axel Springer Verlag. All rights reserved.
//

#import "NSArray+RequestEncoding.h"
#import "MKNetworkKit.h"

@implementation NSArray (RequestEncoding)

-(NSString*) jsonEncodedKeyValueString
{
    
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self
                                                   options:0 // non-pretty printing
                                                     error:&error];
    if(error)
        DLog(@"JSON Parsing Error: %@", error);
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

-(NSString*) urlEncodedKeyValueString {
    
    //How to correctly URL-encode NSArray?
    return nil;
}

-(NSString*) plistEncodedKeyValueString {
    
    NSError *error = nil;
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:self
                                                              format:NSPropertyListXMLFormat_v1_0
                                                             options:0 error:&error];
    if(error)
        DLog(@"JSON Parsing Error: %@", error);
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
