#include <iostream>
using namespace std;

class Mamifero {
    
    private:
        string nombre;
    
    public:
        // Constructor
        Mamifero(string nombre);
        // Método propio de la clase
        void amamantar();
        // Getter y Setter
        string getNombre();
        void setNombre(string nombre);
};