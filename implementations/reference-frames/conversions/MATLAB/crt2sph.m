function sph = crt2sph(crt)
    %{
        This function converts a (3 x N) matrix representing N cartesian coordinates vectors into a (3 x N) matrix representing N spherical coordinates vectors.
        
        Inputs:
        - crt: a (3 x N) matrix containing the cartesian coordinates:
            - cart(1, :): x-coordinates
            - cart(2, :): y-coordinates
            - cart(3, :): z-coordinates
            
        Outputs:
        - sph: a (3 x N) matrix containing the spherical coordinates:
            - sph(1, :): radial distances from the origin
            - sph(2, :): colatitudes (angles from the positive z axis) in the range [0, pi)
            - sph(3, :): longitudes (angles from the positive x axis) in the range [0, 2 * pi)
    %}

    % check if the input is a 3 x N matrix
    if size(crt, 1) ~= 3
        error("Input must be a (3 x N) matrix representing cartesian coordinates.");
    end

    % auxiliary quantities
    xArray = crt(1, :);
    yArray = crt(2, :);
    zArray = crt(3, :);

    % compute radial distance
    rhoArray = sqrt(xArray.^2 + yArray.^2 + zArray.^2);

    % compute colatitude
    thetaArray = acos(zArray ./ rhoArray);
    thetaArray(isnan(thetaArray)) = 0; % handle NaN values for points at the origin

    % compute longitude
    phiArray = atan2(yArray, xArray);
    phiArray = phiArray + (phiArray < 0) * (2 * pi); % wrap longitude in the range [0, 2 * pi)

    %output
    sph = [rhoArray; thetaArray; phiArray];
end
