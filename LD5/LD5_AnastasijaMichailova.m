clc
clear

C = cell(1, 4);
C{1} = [1, 2, 5, 4];
C{2} = 'tekstas';
C{3} = [true, false];
C{4} = struct('vardas', 'Jonas', 'amzius', 20);
celldisp(C);
cellplot(C);
cellfun(@isreal, C)

while true
    a = input('Įveskite a reikšmę: ');
    b = input('Įveskite b reikšmę: ');
    c = input('Įveskite c reikšmę: ');

    if a==1 && b==2 && c==3
        disp('programa baigta')
        break;
    end

    if a < 0
        rez_a = a^2;
    else
        rez_a = a^3;
    end

    if b < 0
        rez_b = b^2;
    else
        rez_b = b^3;
    end

    if c < 0
        rez_c = c^2;
    else
        rez_c = c^3;
    end

    disp(['a rezultatas: ', num2str(rez_a)]);
    disp(['b rezultatas: ', num2str(rez_b)]);
    disp(['c rezultatas: ', num2str(rez_c)]);
end  


sakinys = input('Įveskite sakinį: ', 's');
simbolis = input('Įveskite šalinamą simbolį: ', 's');
naujas_sakinys = '';
pasalinta_kiekis = 0;

for i = 1:length(sakinys)
    if sakinys(i) == simbolis
        pasalinta_kiekis = pasalinta_kiekis + 1;
    else
        naujas_sakinys = [naujas_sakinys, sakinys(i)];
    end
end

disp(['Apdorotas sakinys: ', naujas_sakinys]);
disp(['Pašalintų simbolių skaičius: ', num2str(pasalinta_kiekis)]);