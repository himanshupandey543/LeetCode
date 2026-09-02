class Solution {
public:
    int trap(vector<int>& height) {
        int n=height.size();
    int left=0,right=n- 1;
    int leftmax=0,rightmax=0;
    int ans=0;
    while(left<right){
        if(height[left]<height[right]){
            if(height[left]>=leftmax)
                leftmax=height[left];
            else
                ans+=leftmax-height[left];
            left++;
        }
        else{
            if(height[right]>=rightmax)
                rightmax=height[right];
            else
                ans+=rightmax-height[right];
            right--;
        }
    }
    return ans;
}
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna