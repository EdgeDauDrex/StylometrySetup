#include <cstdlib>
#include <cstring>
#include <cstdio>
#include <cmath>
#include <algorithm>
#include <vector>
#include <string>
#include <iostream>
#include <sstream>
#include <map>
#include <set>
#include <queue>
#include <stack>
#include <list>
#include <bitset>
#include <utility>

using namespace std;

#define dbg(x) cerr<<#x<<" : "<<x<<endl
#define inf (1<<30)
#define PB push_back
#define MP make_pair
#define mset(x,a) memset(x,(a),sizeof(x))
typedef long long LL;
#define twoL(X) (((LL)(1))<<(X))
const double PI = acos(-1.0);
const double eps = 1e-8;

template <class T> T sqr(T x) {
    return x*x;
}

int gcd(int a, int b) {
    return (b == 0) ? a : gcd(b, a % b);
}

#define FOREACH(it, a) for(typeof((a).begin()) it = (a).begin(); it!=(a).end(); ++it)
#define ALL(x) (x).begin(), (x).end()

#define FIRST 280
int T, D, I, M, N;
int d;

int main(int argc, char** argv) {
	freopen("B-small-attempt5.in", "r", stdin);
	freopen("B-small-attempt5.out", "w", stdout);
    scanf("%d", &T);
    for (int ti = 1; ti <= T; ti++) {
        scanf("%d%d%d%d", &D, &I, &M, &N);
        int dp[2][300] = {0};
        int cur = 0;
        for (int i = 0; i < N; i++) {
            scanf("%d", &d);
			dp[cur][FIRST] = dp[1-cur][FIRST]+D;
            for (int j = 0; j < 256; j++) {
				dp[cur][j] = min(dp[1 - cur][j] + D, dp[1-cur][FIRST] + min(abs(d-j),D+I));
				for (int k = 0; k < 256; k++) {
					int t;
					if(M!=0) t= (abs(j - k) - 1) / M;
					else t=99999;
					int cost = min(abs(d-j), D+I) + t*I;
					dp[cur][j] = min(dp[cur][j], dp[1-cur][k] + cost);
				}
		    }
            cur=1-cur;
        }
        int res=inf;
        for(int i=0; i<256; ++i) res=min(res, dp[1-cur][i]);
		res=min(res, dp[1-cur][FIRST]);
        printf("Case #%d: %d\n",ti,  res);
    }
    return (EXIT_SUCCESS);
}

