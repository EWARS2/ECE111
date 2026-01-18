clc % Problem #6
rounds = 100000;
Win = 0;
Tie = 0;
Loss = 0;
tic
for n = 1:rounds
    A = sum(ceil(20*rand(1,3)));
    B = sum(ceil(10*rand(1,5)));
    if (A > B)
        Win = Win + 1;
    elseif (A < B)
        Loss = Loss + 1;
    elseif (A == B)
        Tie = Tie + 1;
    end
end
toc
disp(["A Wins", "Ties", "A Losses"])
disp([Win, Tie, Loss])
disp([100*Win/rounds, 100*Tie/rounds, 100*Loss/rounds])