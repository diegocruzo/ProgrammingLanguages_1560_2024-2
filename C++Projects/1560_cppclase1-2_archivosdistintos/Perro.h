#include "Animal.h"
#include "Mamifero.h"

// Herencia múltiple para la clase Perro
class Perro: public Animal, public Mamifero {
    private:
        int edad;
    public:
        // Constructor
        Perro(string nombre);
        
        void expresarse() override;
        string recorridoEnMetrosPorSegundo() override;
        void alimentarse(string tipo) override;
        
        // Getter y Setter
        string getEdad();
        void setEdad(int edad);
};