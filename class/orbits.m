Me = 5.97e24;
Mm = 1.35e22;
G = 6.67e-11;

ri = 363396000;   
r = [ri, 0];
vi = sqrt(G*Me/ri);
v = [0, vi];

t = 0;
dt = 2000;

i = 1;
while i < 1000
    theta = atan2(r(2), r(1));
    Fg = -G*Me*Mm/(r(1)^2 + r(2)^2);
    
    % Gravitational force
    Fgx = Fg*cos(theta);
    Fgy = Fg*sin(theta);
    % Computer accel
    ax = Fgx/Mm;
    ay = Fgy/Mm;
    % Velocity
    v(1) = v(1) + ax*dt;
    v(2) = v(2) + ay*dt;
    % update position
    r(1) = r(1) + v(1)*dt;
    r(2) = r(2) + v(2)*dt;
    i = i + 1;
    plot(0,0,'bo', 'Markersize', 50)
    hold on;
    plot(r(1), r(2), 'ro');
    axis([-1e9 1e9 -1e9 1e9])
    drawnow;
end