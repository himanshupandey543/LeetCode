class Solution {
public:
    int minElement(vector<int>& nums) {
       vector<int>ans;
       int n=nums.size();
        int sum=0;
     for(int i=0;i<n;i++){
         sum=0;
         int j=0;
        int x=nums[i];
        while(x!=0){
            int digit=x%10;
            sum=sum+digit;
            x/=10;
            j++;
        }
        ans.push_back(sum);

       }
       return *min_element(ans.begin(),ans.end());
    }
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna