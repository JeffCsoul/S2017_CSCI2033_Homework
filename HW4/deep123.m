function L123 = deep123(A, n, l, t)
    temp_ans = [];
    if (l <= 3  && l >= 1)
        temp_ans = [t n zeros(1,3 - l)];
    end
    if (l < 3)
        for i = 1:6
            if (A(n,i) == 1)
                temp_ans = [temp_ans; deep123(A, i, l + 1, [t n])];
            end
        end
    end
    L123 = temp_ans;
end