disp('testing')
load ('featureout.mat');
p=featureout;


net.inputs{1}.processFcns = {'removeconstantrows','mapminmax'};
load net.mat;
load net;

y5=sim(net,p);

disp(y5);
[C I]=max(y5);
disp(I)
disp(C)
 
  
fid = fopen('output.txt','a');

  
if (I==1)
    fwrite(fid, unicode2native(char(hex2dec('0BBE')),'UTF-8'));
fclose(fid);
elseif (I==2)
    fwrite(fid, unicode2native(char(hex2dec('0B8E')),'UTF-8'));
fclose(fid);  
elseif (I==3)
    fwrite(fid, unicode2native(char(hex2dec('0B87')),'UTF-8'));
fclose(fid);  
elseif (I==4)
    fwrite(fid, unicode2native(char(hex2dec('0BB2')),'UTF-8'));
fclose(fid);
elseif (I==5)
    fwrite(fid, unicode2native(char(hex2dec('0BAA')),'UTF-8'));
fclose(fid);
elseif (I==6)
    fwrite(fid, unicode2native(char(hex2dec('0BB1')),'UTF-8'));
fclose(fid); 
elseif (I==7)
    fwrite(fid, unicode2native(char(hex2dec('0BE8')),'UTF-8'));
fclose(fid);
elseif (I==8)
    fwrite(fid, unicode2native(char(hex2dec('0BAF')),'UTF-8'));
fclose(fid);
else
     fwrite('0');
end
 
 
 