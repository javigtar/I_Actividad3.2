//
//  ChesteProtocol.h
//  Actividad 3.2
//
//  Created by Javi on 27/10/14.
//  Copyright (c) 2014 Javi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChesteProtocol <NSObject>

@required
-(int)calculaEdad;

@optional
-(void)metodoOpcional;

@end
