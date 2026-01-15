% Problem #8
M = 0;
tic
for n = 1:10
    W = 0;
    while(abs(W) < 3)
        A = sum(ceil(20*rand(1,3)));
        B = sum(ceil(10*rand(1,5)));

        if (A >= B)
            W = W + 1;
        else
            W = W - 1;
        end
    end
    if (W >= 2)
        M = M + 1;
    end
end
disp(W)
toc