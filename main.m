function x = main(text)
enc_text = text2bin(text);
I = imread('cameraman.tif');
stego_image = hide(I,enc_text);
e_text = extract(stego_image);
text = bin2text(e_text);
%disp(text)

num = sum(sum(double(I).^2));
den = sum(sum((double(I)-double(stego_image)).^2));
x = num/den;
end
