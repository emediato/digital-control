num = 5*[1, 3]
den = [1, 0.1, 0.4, 0]

%denp = conv(den, den)

[r, p, k] = residue(num, den)

g = tf (num, den)

gd = c2d(g, 0.1, 'imp')


% 
% 
% ztrans %z-transform

% iztrans  %inverse z-transform



