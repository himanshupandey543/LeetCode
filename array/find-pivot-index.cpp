class Solution {
public:
    int pivotIndex(vector<int>& nums) {
        int n=nums.size();
        int total=0;
        for(int i:nums) total+=i;
        int lsum=0,rsum;
        for(int i=0;i<n;i++){
            rsum=total-nums[i]-lsum;
            if(lsum==rsum) return i;
            lsum+=nums[i];
        }
        return -1;
    }
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna