function naujas_masyvas = pakartojimai(masyvas, kiek_zemyn, kiek_idesine)
% PAKARTOJIMAI Atkartoja įvestą masyvą nurodytą kiekį kartų žemyn ir į dešinę.
%   NAUJAS_MASYVAS = PAKARTOJIMAI(MASYVAS, KIEK_ZEMYN, KIEK_IDESINE)
%   funkcija imituoja 'repmat' veikimą nenaudodama pačios 'repmat' funkcijos.
%
%   Įvesties argumentai:
%     masyvas - pradinis masyvas
%     kiek_zemyn - teigiamas sveikasis skaičius, rodantis atkartojimų skaičių eilutėmis
%     kiek_idesine - teigiamas sveikasis skaičius, rodantis atkartojimų skaičių stulpeliais
%
%   Išvesties argumentas:
%     naujas_masyvas - suformuotas išplėstinis masyvas

    [eilutes, stulpeliai] = size(masyvas);
    eil_indeksai = mod(0:(eilutes * kiek_zemyn - 1), eilutes) + 1;
    stulp_indeksai = mod(0:(stulpeliai * kiek_idesine - 1), stulpeliai) + 1;
    naujas_masyvas = masyvas(eil_indeksai, stulp_indeksai);
end