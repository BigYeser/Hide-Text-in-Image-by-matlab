function enc_text = text2bin(text)
   len = length(text);
   enc_text = false(1,(len*7));
   for i=1:len
       bin = dec2bin(text(i),7);
       for j=1:7
           enc_text((i-1)*7+j)=bin(j)-'0';
       end
   end
end