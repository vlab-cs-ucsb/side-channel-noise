pw_length = 2;
sleep_time = 30;

num_samples = 10;

pw_match_lengths = [0:pw_length];
num_tests = length(pw_match_lengths);

data = zeros(num_samples+2, num_tests);
data(1,:) = pw_match_lengths;
%data(2,:) = ones(1,length(pw_match_lengths)) / length(pw_match_lengths);

for i = 1:num_tests
  pw_match_length = pw_match_lengths(i);
  guess_prefix = '0' (ones(1,pw_match_length));
  guess = [guess_prefix, '1'];
  disp(['guess = ', guess])
  cmd = ['java PassWordCheck ', num2str(sleep_time), ' ', guess];
  
  for j = 1:num_samples
    tic;
    system(cmd);
    data(j+2,i) = toc;

    progress((j / num_samples), ['For pw match length = ', num2str(pw_match_length)] );

  end


end

save passwordData_length_1 data;

break;

visualizeTimingData(data);
