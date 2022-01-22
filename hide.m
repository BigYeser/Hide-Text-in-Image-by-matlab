function stego_image = hide(image , enc_text)
    enc_text = [enc_text false(1,7)];
    [n ,m] = size(image);
    stego_image = reshape(image,1,[]);
    len_text = length(enc_text);
    len_img = length(stego_image);
    p = 1;
    j = 1;
    for i=1:len_text
        if j == len_img +1
            j = 1;
            p = p+1;
        end
        stego_image(j) = bitset(stego_image(j),p,enc_text(i));
        j= j+1;
    end
    stego_image = reshape(stego_image,n,m);
end