#include <iostream>
using namespace std;

class Animal{
    
    public:
        // Constructor
        Animal();
        // Métodos propios de la clase
        virtual void expresarse();
        virtual string recorridoEnMetrosPorSegundo();
        virtual void alimentarse(string tipo);
};