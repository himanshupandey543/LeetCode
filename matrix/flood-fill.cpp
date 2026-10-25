class Solution {
public:
    int dr[4]={-1,1,0,0};
    int dc[4]={0,0,-1,1};
    int n,m;
    void dfs(vector<vector<int>>& image, int r, int c,
             int oldC,int color){
        image[r][c]=color;
        for(int i=0;i<4;i++){
            int newR=r+dr[i];
            int newC=c+dc[i];
            if(newR>=0 && newR<n && newC >=0 && newC<m && image[newR][newC]==oldC){
                dfs(image,newR,newC,oldC,color);
            }
        }
    }
    vector<vector<int>> floodFill(vector<vector<int>>& image,int sr,int sc,int color){
        n=image.size();
        m=image[0].size();
        int oldC=image[sr][sc];
        if(oldC==color)
            return image;
        dfs(image,sr,sc,oldC,color);
        return image;
    }
};