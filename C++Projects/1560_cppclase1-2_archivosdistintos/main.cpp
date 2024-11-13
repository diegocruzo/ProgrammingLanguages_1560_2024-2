#include "Perro.h"

int main()
{
    // Crear instancia (objeto) de la clase Perro
    Perro max("Max");
    // Hacer uso de la instancia con propiedades y métodos
    max.setEdad(8);
    cout << "Nombre del animal: " << max.getNombre() << endl;
    cout << "Edad: " << max.getEdad() << endl;
    max.expresarse();
    max.amamantar();
    max.alimentarse("hogareño");
    cout << max.recorridoEnMetrosPorSegundo() << endl;
    
    return 0;
}