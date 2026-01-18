clc % Problem #9
rounds = 100000;
Win = 0;
Loss = 0;
tic
for n = 1:rounds
    iWin = 0;
    while(abs(iWin) <= 4)
        A = sum(ceil(20*rand(1,3)));
        B = sum(ceil(10*rand(1,5)));
        if (A > B)
            iWin = iWin + 1;
        elseif (A < B)
            iWin = iWin - 1;
        end
    end
    if (iWin > 0)
        Win = Win + 1;
    elseif (iWin < 0)
        Loss = Loss + 1;
    end
end
toc
disp(["A Wins", "A Losses"])
disp([Win, Loss])
disp([100*Win/rounds, 100*Loss/rounds])