class Solution {
public:
    bool isPalindrome(int x) {
        if(x<0){
            return false;
        }
        long long rev=0;
        long long num=x;
        while(x>0){
            rev=rev*10+x%10;
            x/=10;
        }
        return rev==num;
    }
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna