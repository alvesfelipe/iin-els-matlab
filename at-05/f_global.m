function out = f_global(v)

    global m s md qt v_max v_min
    %get mean of the vector
    m = mean(v);
    % get the standard deviation of the vector
    s = std(v);
    % get median of the vector
    md = median(v);
    sorted = sort(v);
    % get each quartis of the vector
    qt(1) = median(sorted(sorted<median(sorted)));
    qt(2) = median(sorted);
    qt(3) = median(sorted(sorted>median(sorted)));
    
    % get the max value of the vector
    v_max = sorted(size(sorted, 2));
    
    % get the min value
    v_min = sorted(1);
    
    out = {m, s, md, qt, v_max, v_min};
    
    clear global