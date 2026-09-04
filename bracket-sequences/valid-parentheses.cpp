class Solution {
public:
    bool isValid(string s) {
        stack<char> st;
        for (char ch : s){
            if (ch=='('||ch=='{'||ch=='['){
                st.push(ch);
            }
            else{
                if(st.empty()){
                    return false;
                }
                char top=st.top();
                st.pop();
                if((ch==')'&& top!='(')||(ch == '}' && top != '{')||(ch==']'&& top!='[')) {
                    return false;
                }
            }
        }
        return st.empty();
    }
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna