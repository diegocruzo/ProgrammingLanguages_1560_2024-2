#include "Mamifero.h"

// Constructor de la clase
Mamifero::Mamifero(string nombre) {
    this->nombre = nombre;
}

// Método propio de la clase
void Mamifero::amamantar() {
    cout << "Consumo leche proveniente de mi madre" << endl;
}

// Getter y Setter
string Mamifero::getNombre() {
    return nombre;
}
void Mamifero::setNombre(string nombre){
    this->nombre = nombre;
}