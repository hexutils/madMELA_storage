#include <iostream>
using namespace std;
extern "C"{
    void get_pdg_order_(int pdg[6][3], int allproc[3]);
}

int main(int argc, char const *argv[])
{
    int pdg[6][3];
    int allproc[3];
    get_pdg_order_(pdg, allproc);

    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 6; j++){
            cout << pdg[j][i] << endl;
        }
        cout << endl;
    }
    for(int i = 0; i < 3; i++){
        cout << allproc[i] << endl;
    }
    return 0;
}
