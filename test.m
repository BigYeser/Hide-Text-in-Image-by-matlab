length_text = input('enter length of text which you whould to test it :');

%%%%%%%%%%%%%%
% Generate random text   %
%%%%%%%%%%%%%%

symbols = ['a':'z' 'A':'Z' '0':'9'];
nums = randi(numel(symbols),[1 length_text]);
text = symbols (nums);

%%%%%%%%%%%%%%%%
%   Hide text within the image  %
%%%%%%%%%%%%%%%%

enc_text = text2bin(text);
org_image = imread('cameraman.tif');
stego_image = hide(org_image,enc_text);

%%%%%%%%%%%%%%%%%%%%
%     display orginal and stego image   %
%%%%%%%%%%%%%%%%%%%%

subplot(1,2,1)
imshow(org_image)
title('orginal image')
subplot(1,2,2)
imshow(stego_image)
title('stego image')

%%%%%%%%%%%%%%%%%%%%
%   extract the text from stego image   %
%%%%%%%%%%%%%%%%%%%%

e_text = extract(stego_image);
e_text = bin2text(e_text);

if text == e_text
    disp('The extracted text is exactly the same as the original text');
end
