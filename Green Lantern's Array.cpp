#include <bits/stdc++.h>
using namespace std;


void sr(int n,int array[], int Target){   
    bool flag=false;
    for(int i=0;i<n;i++)
    {
        if(array[i]==Target) {
           cout<<i; 
           flag=true;
           break;
        }
    }
    if (!flag){
        cout<<-1;
    }
}

int main()
{
    int n; 
    cin>>n;
    int array[n]; 
    for(int i=0; i<n;i++){
        cin>>array[i]; 
    }
    int Target;
    cin>>Target; 
     sr(n,array,Target); 
   
   return 0; }