%estimate fitness level required to complete an activity
function lvl = cycling_level(x, user_traits)
    p = cycling_power(x, user_traits);
    t = x(2);
    %Power curve estimation based on the following document
    %http://veloclinic.com/wp-content/uploads/2014/04/PowerModelDerivation-1.pdf
    %the following equation is derived from the equation at the top of the
    %third page of the document
    %p = (100+(lvl-1)*20)/(1+(t/60))+(1+(lvl-1)*0.2)/(1+t)
    %rearrange for lvl
    lvl = (5*p*(t^2 + 61*t + 60) - 4*(6001*t + 6060))/(6001*t + 6060);
end