#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int T, N, M;
vector <string> D;
int char_cnt[101][26];

string solve(string L)
{
	int max_score=-1;
	string answer="";
	for(int i=0; i<D.size(); i++)
	{
		vector <int> possible;
		for(int j=0; j<D.size(); j++)
			if(D[i].length()==D[j].length())
				possible.push_back(j);
		int score=0;
		for(int k=0; k<L.length(); k++)
		{
			int char_ind = L[k]-'a';
			bool found = false;
			for(int j=0; j<possible.size(); j++)
				if(char_cnt[possible[j]][char_ind]>0)
				{
					found = true;
					break;
				}
			if(!found)
				continue;
			else
			{
				int cur_cnt = char_cnt[i][char_ind];

				int j=0;
				while(j < possible.size())
					if(char_cnt[possible[j]][char_ind]!=cur_cnt)
						possible.erase(possible.begin()+j);
					else
						j++;	
				if(cur_cnt == 0)
					score++;
			}
			if(possible.size()==1)
			{
				if(score > max_score)
					max_score = score, answer = D[i];
				break;
			}
		}
	}
	return answer;
}

int main()
{
	freopen("input.txt", "r", stdin);
	freopen("output.txt", "w", stdout);
	cin >> T;
	for(int t=1; t<=T; t++)
	{
		cin >> N >> M;
		D.clear();
		memset(char_cnt, 0, sizeof(char_cnt));
		for(int n=0; n<N; n++)
		{
			string s;
			cin >> s;
			D.push_back(s);
			for(int i=0; i<s.length(); i++)
				char_cnt[n][s[i]-'a']++;
		}
		printf("Case #%d:", t);
		for(int m=0; m<M; m++)
		{
			string L;
			cin >> L;
			printf(" %s", solve(L).c_str());
		}
		printf("\n");
	}
	return 0;
}