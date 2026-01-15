% Problem #6
W = 0;
tic
for n = 1:10   
    A = sum(ceil(20*rand(1,3)));
    B = sum(ceil(10*rand(1,5)));
    
    if (A>= B)
        W = W + 1;
    end
end

disp(W)
toc