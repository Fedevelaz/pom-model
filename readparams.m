%
% Elaboró:  Lic. Martín Alfredo Terrazas Silva
%           Universidad de Guadalajara
%           2013
%
% La función readparams.m lee los principales parámetros del modelo
% del archivo:
%                         params.out
%
% y los guardas en su variable correspondiente.

function [  ] = readparams(  )

global IM JM KB DTE DTI DAYS PRTD1
global L3D L2D TM X Y Z 
global ZZ DZ DZZ DELX DELY dxdy A

P=load('params.out');

IM=P(1,1);      JM=P(1,2);     KB=P(1,3);
DTE=P(2,1);     DTI=P(2,2);    DAYS=P(2,3);
PRTD1=P(3,1);   DELX =P(3,2);   DELY=P(3,3);

TM  =  DAYS / PRTD1 + 1;

L3D=IM*JM*KB;   L2D=IM*JM;
S=load('sigma.out');
Z =S(:,2); ZZ=S(:,3);
DZ=S(:,4); DZZ=S(:,5); 

I = 1:IM;    J=1:JM;                       % Indices
X = DELX*(I-1); Y=DELY*(J-1);              % Ejes [m]


dxdy = DELX*DELY ;                         % ¡rea de Celda
A    = IM*DELX * (JM-4)*DELY;              % ¡rea Total

end

