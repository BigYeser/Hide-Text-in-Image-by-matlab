function text = bin2text(enc_text)
   len = length(enc_text);
   text = [];
   for i=1:(len/7)
       num=0;
       for j=1:7
           num = num*2;
           if enc_text((i-1)*7+j)
               num = num+1;
           end
       end
       text = [text char(num)];
   end
end