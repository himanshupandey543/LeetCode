class Solution {
public:
    int minimumEffortPath(vector<vector<int>>& heights) {

        int n = heights.size();
        int m = heights[0].size();

        priority_queue<
            pair<int,pair<int,int>>,
            vector<pair<int,pair<int,int>>>,
            greater<pair<int,pair<int,int>>>> pq;

        vector<vector<int>> dist(n, vector<int>(m, INT_MAX));

        pq.push({0,{0,0}});
        dist[0][0] = 0;

        int dr[] = {1,0,-1,0};
        int dc[] = {0,-1,0,1};

        while(!pq.empty()){

            auto el = pq.top();
            pq.pop();

            int effort = el.first;
            int row = el.second.first;
            int col = el.second.second;

            if(effort > dist[row][col])
                continue;

            for(int k=0;k<4;k++){

                int nr = row + dr[k];
                int nc = col + dc[k];

                if(nr>=0 && nr<n && nc>=0 && nc<m){

                    int edge = abs(heights[row][col]-heights[nr][nc]);

                    int newEffort = max(effort, edge);

                    if(newEffort < dist[nr][nc]){

                        dist[nr][nc] = newEffort;
                        pq.push({newEffort,{nr,nc}});
                    }
                }
            }
        }

        return dist[n-1][m-1];
    }
};