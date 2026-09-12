class Solution {
public:
    int scoreOfString(string s) {
        int sum=0,diff;
        for(int i=1;i<s.size();i++){
            diff=abs((s[i]-'a')-(s[i-1]-'a'));
            sum+=diff;
        }
        return sum;
    }
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna