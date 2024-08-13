#include <bits/stdc++.h>
using namespace std;


int main(){
int r,c;
cin>> r; 
cin>>c; 
int justice_league[r][c],villains[r][c];
for (int i=0; i<r;i++){
    for(int j=0; j<c;j++){
        cin>>justice_league[i][j];
    }
}
for (int i=0; i<r;i++){ 
    for(int j=0; j<c;j++){
        cin>>villains[i][j];
    }
}
int justice_league_wins=0,villains_wins=0,ties=0;
    for (int i=0; i<r;i++){
        for(int j=0; j<c;j++){
            if(justice_league[i][j]>villains[i][j]){        
                justice_league_wins++;
            }
            else if(justice_league[i][j]<villains[i][j]){
                 villains_wins++;
            }
            else {
                 ties++;
            }
        }
    }
    if(justice_league_wins>villains_wins){                     
    cout<< "Justice League";
    }
    else if(justice_league_wins<villains_wins){
    cout<< "Villains";
    }
    else{
    cout<<"Tie";
    }


    return 0;
}