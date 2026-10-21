class Solution {
public:
    int minOperations(string s) {
        int n = s.length();
        string a = s;
        string b = a;
        sort(b.begin(), b.end());

        if (a == b) return 0;
        if (n <= 2) return -1;

        int first = 0, last = n - 1;

        while (a[first] == b[first]) first++;
        while (a[last] == b[last]) last--;

        if (first > 0 || last < n - 1) return 1;

        string c = a;
        sort(c.begin(), c.begin() + n - 1);
        if (c == b) return 1;

        c = a;
        sort(c.begin() + 1, c.end());
        if (c == b) return 1;

        c = a;
        sort(c.begin(), c.begin() + n - 1);
        sort(c.begin() + 1, c.end());
        if (c == b) return 2;

        c = a;
        sort(c.begin() + 1, c.end());
        sort(c.begin(), c.begin() + n - 1);
        if (c == b) return 2;

        return 3;
    }
};