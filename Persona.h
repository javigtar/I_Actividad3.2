//
//  Persona.h
//  Proyecto3.1
//
//  Created by alumno on 22/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChesteProtocol.h"

@interface Persona : NSObject <ChesteProtocol>
@property (nonatomic, strong) NSString* nombre;
@property (nonatomic, strong) NSString* primerApellido;
@property (nonatomic, strong) NSNumber* anyoNacimiento;
@property (setter=darleIdentidad:, nonatomic, readonly) NSString* dni;
@property (getter=fechaNacimiento, nonatomic, readonly) NSDate* fechaNac;

-(id)initWithParams:(NSString*)nombre primerApellido:(NSString*)primerApellido anyoNacimiento:(NSNumber*)anyoNacimiento;
-(id)initWithParams2:(NSString*)nombre primerApellido:(NSString*)primerApellido fechaNacimiento:(NSDate*)fechaNacimiento;

-(NSString*)saluda;
-(void)diAlgo;
-(NSString*)diAlgoAlerta;
-(void)asignarDni:(NSString*)aDni;
-(void)asignarFechaNAc:(NSString*)aFecha;
-(int)calculaEdad;

@end
