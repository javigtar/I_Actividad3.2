//
//  Persona.m
//  Proyecto3.1
//
//  Created by alumno on 22/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import "Persona.h"

@interface Persona()
@property (setter=darleIdentidad:, nonatomic, readwrite) NSString* dni;
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
    
    //Establezco el formato de fecha
    NSDateFormatter *formatoFecha = [[NSDateFormatter alloc] init];
    [formatoFecha setDateFormat:@"dd/MM/yyyy"];
    
    NSDate *fechaActual = [NSDate date];
    
    NSDate *fechaLimite = [formatoFecha dateFromString:@"01/01/1880"];
    
    NSDate *fecha = [formatoFecha dateFromString:aFecha];
    
    if ( [fecha compare:fechaActual] == NSOrderedDescending) {
        NSLog(@"La fecha no puede ser mayor a la actual");
    }else if ( [fecha compare:fechaLimite] == NSOrderedAscending) {
        NSLog(@"La fecha no puede ser menor a 01/01/1880");
              }else{
                  _fechaNac = fecha;
                  NSLog(@"Fecha asignada: %@", [formatoFecha stringFromDate:self.fechaNacimiento]);
              }
}

@end
