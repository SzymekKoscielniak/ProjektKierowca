%% czyszczenie
clf;
clc;

%% usuwanie pliku tekstowego  
h_txt = ('wyniki.txt');
delete(h_txt);

%% petla sprawdzajaca czy istnieje plik

 if exist('wyniki.txt', 'file') == 0
       disp('Plik nie istnieje, tworzenie pliku')
        f = fopen('wyniki.txt', 'w');
        fclose(f);
    else
        disp('Plik istnieje')
        
 end

%%  petla do pobierania, wyswietlania i zapisywania danych do plikow

while 1 

   
    
k = waitforbuttonpress;

value = double(get(gcf,'CurrentCharacter'));


A = char(value)
fileID = fopen('wyniki.txt','a');
 
% formatSpec = '\nnacisniety klawisz to %3i\n ';
% fprintf(fileID,formatSpec,value,'-append');

formatSpec2 = '\nWcisniety znak to %3c \n';
fprintf(fileID,formatSpec2,A);

% if handles.A == 'd' || handles.A == 'g'
% disp('nacisnieto mocno hamulec')
% end


end