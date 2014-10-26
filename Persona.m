//
//  Persona.m
//  Proyecto3.1
//
//  Created by alumno on 22/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import "Persona.h"

@interface Persona()
@property (nonatomic, readwrite) NSString* dni;
@end

@implementation Persona

-(id)initWithParams:(NSString *)nombre primerApellido:(NSString *)primerApellido anyoNacimiento:(NSNumber *)anyoNacimiento{
    
    self = [super init];
    self.nombre = nombre;
    self.primerApellido = primerApellido;
    self.anyoNacimiento = anyoNacimiento;
    
    return self;
}

-(id)initWithParams2:(NSString *)nombre primerApellido:(NSString *)primerApellido fechaNacimiento:(NSDate *)fechaNacimiento{
    
    self = [super init];
    self.nombre = nombre;
    self.primerApellido = primerApellido;
    _fechaNac = fechaNacimiento;
    
    return self;
}

-(NSString*)saluda{
    return @"Holaaaaaa!!!";
}

-(void)diAlgo{
    [self saluda];
    NSLog(@"%@ %@ %@",[self saluda] ,self.nombre, self.primerApellido);
}

-(NSString*)diAlgoAlerta{
    return [[NSString alloc] initWithFormat:@"%@ %@ %@",[self saluda] ,self.nombre, self.primerApellido];
}

-(void)asignarDni:(NSString *)aDni{
    self.dni = aDni;
}

-(void)asignarFechaNAc:(NSString *)aFecha{
    
    NSDateFormatter *formatoFecha = [[NSDateFormatter alloc] init];
    [formatoFecha setDateFormat:@"dd-MM-yyyy"];    
    
    NSDate *fechaActual = [formatoFecha stringFromDate:[NSDate date]];
    
    if (aFecha > fechaActual) {
        NSLog(@"Imposible");
    }
    
    //NSDateComponents *fechaComponents = [[NSDateComponents alloc] init]
    //[fechaComponents da]
    
    
}

@end
