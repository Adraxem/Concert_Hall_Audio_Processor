
[y,Fs] = audioread("Yeni Kayıt 5.m4a");
[y1,Fs1] = audioread("Yeni Kayıt 6.m4a");
[moz,art] = audioread("mozart_bsn_5.mp3");
moz = moz*(0.1);
moz = moz(34000:10898544,1);
plot(moz)
disp(Fs)
 disp(length(moz))
music = conv(moz,y);
music2 = conv(moz,y1);
% sampleRate = 48000;
% [P,Q] = rat(192e3/sampleRate);
% sampleRate2 = abs(P/Q*sampleRate-48000);
% newmusic = resample(music,P,Q);
% audiowrite("Output_Music3.mp4",newmusic,Fs)
audiowrite("Output_Music.mp4",music,Fs1)
audiowrite("Output_Music2.mp4",music2,Fs)

figure(1)
plot(y)
title('1st Balloon impulse response')
xlabel('n')
ylabel('Mapped Magnitude (dB)')
figure(2)
plot(y1)
title('2nd Balloon impulse response')
xlabel('n')
ylabel('Mapped Magnitude (dB)')
figure(3)
plot(music)
title('Output Music')
xlabel('n')
ylabel('Mapped Magnitude (dB)')
figure(4)
plot(music2)
title('Output Music 2')
xlabel('n')
ylabel('Mapped Magnitude (dB)')
figure(5)
plot(moz)
title('Original Anechoic music')
xlabel('n')
ylabel('Mapped Magnitude (dB)')









