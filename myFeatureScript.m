letters = ['a   ';'ae  '; 'e   '; 'l   '; 'p   ';'r   '; 'u   '; 'y   ']; 
increment = 1;
 for y = 1 :1: 8
    for k = 1 : 1 : 20
        test = strcat(letters(y,:) , num2str(k));
        imageName = imread(strcat('training_set/',test,'.bmp'));
        disp(size(imageName))
        if(size(imageName,3)==3)
        imageName = rgb2gray(imageName);
        end
        x(:, increment) = (feature_extract(imageName));
        increment = increment + 1;
    end;
 end;
 x=x'
save('x.mat','x');