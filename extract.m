function enc_text = extract(stego_image)
    image = reshape(stego_image,1,[]);
    p = 1;
    len = length(image);
    i = 0;
    j = 0;
    num = 0;
    enc_text = [];
   while true
        i = i + 1;
        j = j + 1;
       if i == len +1 
           i =1;
           p = p + 1;
       end
       
       if mod(j,7) == 1
           num = 0;
       end
         
       bin = bitget(image(i),p);
       enc_text = [enc_text bin];
       
       if ~bin
           num = num + 1;
       end
       
       if num == 7
           break;
       end

   end
   
   enc_text(end-6:end) = [];
end

