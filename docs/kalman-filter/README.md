# Kalman Filter

Kalman filters are a family of sequential algorithms used for estimating the state of a system from noisy observations. They are widely used in the fields of control systems, robotics, aerospace, and finance. There are many types of Kalman filters, the main implementations used in aerospace being:

## Standard Kalman Filter (KF)

Only used for linear systems where measurements are affected by gaussian noise. Fast and optimal but limited to linear systems.

WIP

## Extended Kalman Filter (EKF)

Suitable for nonlinear systems, based on local linearization for state propagation and measurements. Can handle mild nonlinearity but may introduce significant error and requires the computation of jacobians.

WIP

## Unscented Kalman Filter (UKF)

Suitable for nonlinear systems, uses deterministic sampling to approximate distribution without linearization and does not require jacobians. More accurate than EKF (especially in the presence of strong nonlinearities) but also more computationally taxing.

WIP
