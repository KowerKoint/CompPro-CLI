#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n; cin >> n;
    vector<int> contain(2002);
    for(int i = 0; i < n; i++) {
        int a; cin >> a;
        contain[a] = 1;
    }
    for(int i = 0; i <= 2001; i++) {
        if(contain[i] == 0) {
            cout << i << '\n';
            break;
        }
    }
}