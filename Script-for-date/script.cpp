#include <bits/stdc++.h>

//-------------------------------------macros-----------------------------------------------
#define ll long long int

/*------------------------------------Policy based data structures-------------------------------------------*/
using namespace std;
//-----------------------------------------Operator overloads----------------------------------
void solve(ll);

int main() {
#ifndef ONLINE_JUDGE
    freopen("input", "r", stdin);
    freopen("output", "w", stdout);
#endif
    solve(1);
}
vector<string> tokenize(string s, string del = " ") {
    ll start = 0;
    ll end = s.find(del);
    vector<string> ans;
    while (end != -1) {
        ans.emplace_back(s.substr(start, end - start));
        start = end + (int)del.size();
        end = s.find(del, start);
    }
    ans.emplace_back(s.substr(start, end - start));
    return ans;
}

void solve(ll TC) {
    unordered_map<string, int> months;
    months["JAN"] = 1;
    months["FEB"] = 2;
    months["MAR"] = 3;
    months["APR"] = 4;
    months["MAY"] = 5;
    months["JUN"] = 6;
    months["JUL"] = 7;
    months["AUG"] = 8;
    months["SEP"] = 9;
    months["OCT"] = 10;
    months["NOV"] = 11;
    months["DEC"] = 12;
    string s;
    while (getline(cin, s)) {
        cout << "(";
        vector<string> tokens = tokenize(s, " ");
        cout << tokens[0] << ", " << tokens[1] << ", " << tokens[2];
        for (ll j = 0; j < 2; j++) {
            if (tokens[3 + j] == "Null") {
                cout << ", "
                     << "NULL";
            } else {
                string output = "";
                vector<string> date = tokenize(tokens[3 + j], "-");
                if (date[2] > "22")
                    output += "19";
                else
                    output += "20";
                output += date[2];
                output += "-";
                string mm = to_string(months[date[1]]);
                if (mm.size() < 2)
                    mm = "0" + mm;
                output += mm;
                output += "-";
                output += date[0];
                cout << ", '" << output << "'";
            }
        }
        cout << ")," << endl;
    }
}
