clc % Problem #7
rounds = 100000;
Win = 0;
Tie = 0;
Loss = 0;
tic
for i = 1:rounds
    iWin = 0;
    iTie = 0;
    iLoss = 0;
    for j = 1:3 % Start of match w/ 3 rounds
        A = sum(ceil(20*rand(1,3)));
        B = sum(ceil(10*rand(1,5)));
        if (A > B)
            iWin = iWin + 1;
        elseif (A < B)
            iLoss = iLoss + 1;
        elseif (A == B)
            iTie = iTie + 1;
        end
    end
    if (iWin > iLoss) % Count result of match
        Win = Win + 1;
    elseif (iWin < iLoss)
        Loss = Loss + 1;
    else
        Tie = Tie + 1;
    end
end
toc
disp(["A Wins", "Ties", "A Losses"])
disp([Win, Tie, Loss])
disp([100*Win/rounds, 100*Tie/rounds, 100*Loss/rounds])