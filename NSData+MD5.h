//
//  NSData+MD5.h
//  NSDataMD5
//
//  Created by Guilherme Andrade on 12/21/11.
//  Copyright (c) 2011 2thinkers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (MD5)

+ (NSString *)MD5Hash:(NSData *)input;
- (NSString *)MD5Hash;

@end
