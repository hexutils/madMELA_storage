#include <iostream>
#include <string>
#include <cstring>

using namespace std;
extern "C"{
    void ggFSIG_get_pdg_order_(int pdg[6][3], int allproc[3]);
    void ggFSIG_smatrixhel_(int pdgs[], int& procid, const int& npdg, double* p, double& alphas, double& scale2, int& nhel, double& ans);
    void qq4lSIG_get_pdg_order_(int pdg[6][12], int allproc[12]);
    void qq4lBKG_get_pdg_order_(int pdg[6][12], int allproc[12]);
    void qq4lBSI_get_pdg_order_(int pdg[6][12], int allproc[12]);

}

int main(int argc, char const *argv[]){

    int pdg[6][3];
    int allproc[3];
    ggFSIG_get_pdg_order_(pdg, allproc);

    cout << "ggF" << endl << endl;
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 6; j++){
            cout << pdg[j][i] << " | ";
        }
        cout << endl;
    }
    for(int i = 0; i < 3; i++){
        cout << allproc[i] << endl;
    }

    int qq4l_pdg[6][12];
    int qq4l_allproc[3];
    qq4lSIG_get_pdg_order_(qq4l_pdg, qq4l_allproc);

    cout << "qq4l Sig" << endl << endl;
    for(int i = 0; i < 12; i++){
        for(int j = 0; j < 6; j++){
            cout << qq4l_pdg[j][i] << " | ";
        }
        cout << endl;
    }
    for(int i = 0; i < 12; i++){
        cout << qq4l_allproc[i] << endl;
    }

    qq4lBKG_get_pdg_order_(qq4l_pdg, qq4l_allproc);

    cout << "qq4l Bkg" << endl << endl;
    for(int i = 0; i < 12; i++){
        for(int j = 0; j < 6; j++){
            cout << qq4l_pdg[j][i] << " | ";
        }
        cout << endl;
    }
    for(int i = 0; i < 12; i++){
        cout << qq4l_allproc[i] << endl;
    }

    qq4lBSI_get_pdg_order_(qq4l_pdg, qq4l_allproc);

    cout << "qq4l Bsi" << endl << endl;
    for(int i = 0; i < 12; i++){
        for(int j = 0; j < 6; j++){
            cout << qq4l_pdg[j][i] << " | ";
        }
        cout << endl;
    }
    for(int i = 0; i < 12; i++){
        cout << qq4l_allproc[i] << endl;
    }
    return 0;
}
