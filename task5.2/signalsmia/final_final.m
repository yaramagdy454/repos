t = linspace(0, 2, 1000); 
y = 1.4 * sin(pi * t / 2); 
V_max = 1.4;
sampling_times = [0.25, 0.5, 1];
bit_depths = [3, 2];
for i = 1:length(bit_depths)
    n = bit_depths(i); 
    q = V_max / (2^n - 1); 
    for j = 1:length(sampling_times)
        Ts = sampling_times(j); 
        t_samples = 0:Ts:2; 
        y_samples = 1.4 * sin(pi * t_samples / 2);
        a = fix(y_samples / q); 
        yq = a * q; 
        if (n == 3 && (Ts == 0.5 || Ts == 1 || Ts == 0.25)) || (n == 2 && Ts == 0.25)
            figure;
            % Original signal plot
            subplot(2, 2, 1);
            plot(t, y, 'r');
            title(['Original Signal (n=', num2str(n), ', Ts=', num2str(Ts), ')']);
            xlabel('Time (sec)');
            ylabel('Voltage (V)');
            axis([0 2 0 V_max]);
            grid on;
            % Sampled signal plot
            subplot(2, 2, 2);
            stem(t_samples, y_samples, 'b');
            title(['Sampled Signal (n=', num2str(n), ', Ts=', num2str(Ts), ')']);
            xlabel('Time (sec)');
            ylabel('Voltage (V)');
            axis([0 2 0 V_max]);
            grid on;
            % Reconstructed signal plot with binary y-axis labels
            subplot(2, 2, 3:4);
            stairs(t_samples, yq, 'black');
            title(['Reconstructed Signal (n=', num2str(n), ', Ts=', num2str(Ts), ')']);
            xlabel('Time (sec)');
            ylabel('Binary Code');
            yticks((0:2^n-1) * q); 
            yticklabels(dec2bin(0:2^n-1, n)); 
            axis([0 2 -q V_max+q]); 
            grid on;
        end
    end
end
