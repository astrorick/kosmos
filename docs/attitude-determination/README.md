# Attitude Determination

Attitude determination is the problem of finding the attitude of a body with respect to a fixed reference frame. For normal spacecraft, this can include inertial navigation through the use of an IMU supported by one or more sensors used for corrections (_i.e._, star trackers).

Similarly to orbit determination, this is one of the main objectives of spacecraft navigation.

## Farrenkopf Noise Model

The _Farrenkopf Noise Model_ can be used to model process noise for inertial navigation systems. It provides a realistic stochastic description of errors in inertial navigation systems due to sensor noise and bias instability (from gyroscopes and accelerometers), propagation of those errors through the inertial equations, and correlated noise sources.

It is often used in Kalman filter design and simulations to model the evolution of navigation errors and to design and tune sensor fusion filters.
