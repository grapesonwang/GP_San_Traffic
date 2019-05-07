   function predictProb=littleInterPro2(a1,predictLittleInters_x,predictProb_x,predictLittleIntersnew_x)
    if predictLittleIntersnew_x(1)>predictLittleInters_x(end)||predictLittleIntersnew_x(end)<predictLittleInters_x(1)
        predictProb=predictProb_x;
    else
        for i=1:length(predictProb_x)
            for j=1:length(a1)
                if ~(predictLittleIntersnew_x(i)>predictLittleInters_x(j+1)||predictLittleIntersnew_x(i+1)<predictLittleInters_x(j))
                    predictProb(i,1)=predictProb_x(i)*a1(j);
                end
            end
        end
    end
            