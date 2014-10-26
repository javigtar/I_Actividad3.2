//
//  datosCompletosPersona.m
//  Actividad 3.2
//
//  Created by Javi on 26/10/14.
//  Copyright (c) 2014 Javi. All rights reserved.
//

#import "Persona+DatosCompletosPersona.h"

@implementation Persona(DatosCompletosPersona)

-(void)datosCompletosPersona{
    NSLog([[NSString alloc] initWithFormat:@"Nombre: %@, Primer Apellido: %@, Año Nacimiento: %@, DNI: %@", self.nombre, self.primerApellido,
           self.anyoNacimiento, self.dni]);
}

@end
