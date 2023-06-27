%
% Elaboró:  Lic. Martín Alfredo Terrazas Silva
%           Universidad de Guadalajara
%           2013
%
% La función readbath.m lee la batimetría del archivo:
%
%                         bath.out
%
% Y lo guarda en la variable H.

function [ H ] = readbath(  )

global IM JM L2D 

fid = fopen('bath.out', 'rb', 'a');

er = fread(fid , 1 ,'float32');
el = fread(fid ,L2D,'float32');
er = fread(fid , 1 ,'float32');
fclose(fid);

H(:,:) = reshape(el,IM,JM);
H=-H;
H(:,[1 end])=NaN; 

end


