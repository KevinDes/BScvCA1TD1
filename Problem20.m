function im = displayRGB(filename)
    A = imread('Lenna.jpg');
    a = zeros(size(A, 1), size(A, 2));
    [x1,y1,z1] = size(A);
    minsize = min(x1,y1);
    red = A(:,:,1);
    green = A(:,:,2);
    blue = A(:,:,3);
  
    figure, imshow(A), title('mini.jpg')
    figure, imshow(red), title('Red')
    figure, imshow(green), title('Green')
    figure, imshow(blue), title('Blue')
    
    [x,y] = meshgrid(1:minsize);
    [xi,yi] = meshgrid(1:1:minsize);
    
    redone = cast(interp2(x,y,double(red),xi,yi,'linear'),'uint8');
    greenone = cast(interp2(x,y,double(green),xi,yi,'linear'),'uint8');
    blueone = cast(interp2(x,y,double(blue),xi,yi,'linear'),'uint8');
    
    
    redone =  cat(3,redone,a,a);
    greenone = cat(3,a,greenone,a);
    blueone = cat(3,a,a,blueone);
    
      
    A2 = cat(2,A,redone);
    A3 = cat(2,greenone,blueone);
    Anew = cat(1,A2,A3);
    figure
    imshow(Anew)
    
    
%     interpret_red = interp2(single(red(1:400,1:400),1));
%     interpret_green = interp2(single(green(1:400,1:400),1));
%     interpret_blue = interp2(single(blue(1:400,1:400),1));
   
    
%     figure, imshow(A), title('mini.jpg')
%     figure, imshow(Ared), title('Red')
%     figure, imshow(Agreen), title('Green')
%     figure, imshow(Ablue), title('Blue')
end
