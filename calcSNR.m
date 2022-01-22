symbols = ['a':'z' 'A':'Z' '0':'9'];
x = 1000:1000:65000;
SNR=zeros(size(x));

for i=1:length(x)
     nums = randi(numel(symbols),[1 x(i)]);
     text = symbols (nums);
     
    snr1 = main(text);
    SNR(i)=snr1;
end

figure,semilogy(x,SNR);
ylabel('SNR');
xlabel('length of text');
grid on;
