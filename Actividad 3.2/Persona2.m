//
//  Persona2.m
//  Proyecto3.1
//
//  Created by alumno on 22/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import "Persona2.h"

@implementation Persona2

-(void)diAlgo{
    NSString* cadena = [[[NSString alloc] initWithFormat:@"%@ %@ %@", [self saluda], self.nombre, self.primerApellido] uppercaseString];
    NSLog(cadena);
}

-(NSString*)diAlgoAlerta{
    return [[[NSString alloc] initWithFormat:@"%@ %@ %@", [self saluda], self.nombre, self.primerApellido] uppercaseString];
}

@end
