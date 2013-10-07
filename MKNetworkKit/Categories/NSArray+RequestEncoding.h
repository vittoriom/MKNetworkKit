//
//  NSArray+RequestEncoding.h
//  Bild.de-iPad
//
//  Created by Vittorio Monaco on 07/10/13.
//  Copyright (c) 2013 Axel Springer Verlag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (RequestEncoding)

-(NSString*) urlEncodedKeyValueString;
-(NSString*) jsonEncodedKeyValueString;
-(NSString*) plistEncodedKeyValueString;

@end
