%% AMOGUS

[y, Fs] = audioread('amogus.mov');
if max(abs(y)) > 1
    y = y / max(abs(y));
end

try
    player = audioplayer(y, Fs);
    playblocking(player);

    player_speed_1 = audioplayer(y, Fs * 0.9);
    playblocking(player_speed_1);

    player_speed_2 = audioplayer(y, Fs * 0.75);
    playblocking(player_speed_2);

    player_speed_3 = audioplayer(y, Fs * 0.5);
    playblocking(player_speed_3);
catch ME
    warning('Audio playback failed: %s. Attempting alternate method...', ME.message);
    sound(y, Fs);
    pause(length(y) / Fs);
end
