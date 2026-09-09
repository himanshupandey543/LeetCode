class Solution {
public:
    int countCompleteSubarrays(vector<int>& nums) {
        int l=0, ans=0;
        int n=nums.size();
        unordered_set<int> s(nums.begin(), nums.end());
        int total=s.size();
        unordered_map<int, int>mp;
        for(int i=0;i<n;i++) {
            mp[nums[i]]++;
            while(mp.size() == total)
            {
                ans=ans+n-i;
                mp[nums[l]]--;
                if(mp[nums[l]]==0) mp.erase(nums[l]);
                l++;
            }
        }
        return ans;
    }
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna