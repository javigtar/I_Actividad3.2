//
//  main.m
//  Actividad 3.2
//
//  Created by Javi on 26/10/14.
//  Copyright (c) 2014 Javi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Persona+DatosCompletosPersona.h";
#import "Persona2.h";

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        //Actividad 2
        
        Persona *persona = [[Persona alloc] initWithParams:@"Javi" primerApellido:@"Garcia" anyoNacimiento:@1985];
        [persona asignarDni:@"12345678N"];
        [persona datosCompletosPersona];
        
        Persona2 *persona2 = [[Persona alloc] initWithParams:@"Javi2" primerApellido:@"Garcia2" anyoNacimiento:@19852];
        [persona2 asignarDni:@"12345678N2"];
        [persona2 datosCompletosPersona];
        
        
        //Actividad 3
        
        //Creo los componentes de la fecha: Año, mes y día asignandoles un valor
        NSDateComponents *fechaComponents = [[NSDateComponents alloc] init];
        [fechaComponents setYear:1985];
        [fechaComponents setMonth:12];
        [fechaComponents setDay:03];
        
        //Establezco el formato que tendrá la fecha
        NSDateFormatter *formatoFecha = [[NSDateFormatter alloc] init];
        [formatoFecha setDateFormat:@"dd-MM-yyyy"];
        
        //Creo el objeto fecha a partir de un calendario con los datos que he utilizado antes
        NSDate *fecha = [[NSCalendar currentCalendar] dateFromComponents:fechaComponents];
        
        Persona* persona3 = [[Persona alloc] initWithParams2:@"Javi3" primerApellido:@"Garcia3" fechaNacimiento:fecha];
        NSLog(@"Nombre: %@, Apellido: %@, Fecha Nacimiento: %@", persona3.nombre, persona3.primerApellido, [formatoFecha stringFromDate:fecha]); //Fecha con formato
        
        
        //Actividad 5
        [persona asignarFechaNAc:@"30-12-2015"];
        [persona asignarFechaNAc:@"30-12-1700"];
        [persona asignarFechaNAc:@"30-12-2002"];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
