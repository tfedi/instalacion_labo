#include <iostream>
#include <fstream>
#include <stdlib.h>

using namespace std;

const string INSTALACIONES = "instalacion_labo.sh";
const string INSTALADOS = "instalados.txt";
const string DELIMITADOR = "#FIN";

bool instalado(string programa){
    ifstream instalados;
    instalados.open(INSTALADOS.c_str());
    if(instalados.is_open()){
        string programa_actual;
        while (getline(instalados, programa_actual)){
            if (programa_actual == programa){
                instalados.close();
                return true;
            }

        }
    }
    instalados.close();
    return false;
}

void instalar(ifstream &instalaciones, string programa){
    cout << "INSTALANDO " << programa << endl;
    string comando;
    while (getline(instalaciones, comando) && comando != DELIMITADOR){
        cout << "CORRIENDO COMANDO: " << comando << endl;
        system(comando.c_str());
    }
    ofstream instalados;
    instalados.open(INSTALADOS.c_str(), ios::app);
    if (instalados.is_open()){
        instalados << programa << endl;
    }
}

int main(){
    ifstream instalaciones;
    instalaciones.open(INSTALACIONES.c_str());
    if (instalaciones.is_open()){
        string linea_actual;
        while (getline(instalaciones,linea_actual)){
            if (linea_actual[0] == '#' && !instalado(linea_actual))
                instalar(instalaciones, linea_actual);
        }
    }
    return 0;
}
