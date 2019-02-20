% Eksempel: Kakebaking.

% En gulrot og to egg veier tre hekto.
% To gulr�tter og tre egg veier fem hekto.

%% Skriv p� matriseform.
% M * x = b
% x = [vekt per gulrot;
%      vekt per egg;
%      vekt av sk�len]
% M: koeffisientmatrise
% x: l�sningsvektor
% b: h�yresidevektor
% b = [vekt f�rste gang jeg veide;
%      vekt andre gang jeg veide]

% Uten sk�l
M = [1 2; 
     2 3];
% Med sk�l
M = [1 2 1; 
     2 3 1];
b = [3;
     5];
% Samle i �n stor matrise med koeffisientmatrise til venstre og h�yreside-
% vektor til h�yre
A = [M, b]
rref(A)

%% Trekk 2 ganger rad en fra rad to for � f� null i nedre venstre hj�rne.
rad_en = A(1,:)
A(2,:) = A(2,:) - 2 * rad_en

%% Gang rad to med -1 for � f� 1 p� hj�rneleddet.
A(2,:) = -1 * A(2,:)

%% Trekk 2 ganger rad to fra rad 1 for � f� 0 over hj�rneleddet.
rad_to = A(2,:)
A(1,:) = A(1,:) - 2 * rad_to

%% Oversett til ord igjen.
% En gulrot veier ett hekto.
% Ett egg veier ett hekto.




%% Eksempel 2
% Rekkevektor med flyreiser til [Skandinavia, Europa, resten]
student1 = [1, 2, 0];
student2 = [0, 3, 1];
anna = [0, 2, 3];
M = [student1;
    student2;
    anna]


b = [1.4;
     3.4;
     6.0]
% b = [Totalt utslipp for student1;
%      Totalt utslipp for student2;
%      Totalt utslipp for anna]
% Vi lager oss en celle-vektor. Den er litt som en vektor, men kan brukes 
% litt mer fleksibelt. Den defineres med {} i stedet for {}:
x_navn = {'Utslipp per tur til Skandinavia'; 
          'Utslipp per tur til Europa'; 
          'Utslipp per tur til resten av verden'};


A = [M b]

% Studentenes l�sning merkert med hermetegn (veldig bra!!):

%% Del linje to p� 3 for � f� 1 i hj�rneleddet
A(2,:) = A(2,:) / 3
%% "Du m� ta linje tre minus 2 ganger linje to"
A(3,:) = A(3,:) - 2 * A(2,:)
%% "Gange linje tre med en delt p� 2,333"
% Helt rett, men skriver 2,33 som 7/3
A(3,:) = A(3,:) / (7/3)
%% "Du m� ta linje to minus 1/3 gange linje tre"
A(2,:) = A(2,:) - 1/3 * A(3,:)
%% "Du m� ta linje en minus 2 gange linje 2"
A(1,:) = A(1,:) - 2 * A(2,:)

%% Oversett til ord igjen:
% Linje 1: En skandinaviareise slipper ut 0,2 tonn
% Linje 2: En europareise slipper ut 0,6 tonn
% Linje 3: En reise til resten av verden slipper ut 1,6 tonn

% Eventuelt:
for i = 1:length(x_navn)
    fprintf('Linje %i: %s er %0.1f tonn CO_2-ekvivalenter. \n', ...
            i, x_navn{i}, A(i, 4))
end


%% Eksempel 3: Ingen l�sning
M = [1 2;
     2 4]
 b = [15;
     20]
A = [M, b]

% A(2,:) = A(2,:) / 2
%% "Ta linje to minus to gange linje ein"
A(2,:) = A(2,:) - 2 * A(1,:)

% N� sier den andre ligningen (nederste raden) at 0 = -10, og det er jo
% FEIL!



%% Juksefunksjon, Matlabs egen funksjon for Gauss-Jordan-eliminering:

% rref(A)
