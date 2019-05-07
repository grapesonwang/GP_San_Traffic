function newProb_y=littleInterPro(littleInters_y,xuhao_y,mean_y,std_y,probMatric_y)
newProb_y=ones(length(littleInters_y)-1,1);
    for i=1:length(littleInters_y)-1
        low=littleInters_y(i);high=littleInters_y(i+1);
        for t=1:length(xuhao_y)
            j=xuhao_y(t);
            for k=1:6
                if ~(mean_y(j)+(k-4)*std_y(j)>high||mean_y(j)+(k-3)*std_y(j)<low)
                    newProb_y(i)=newProb_y(i)*probMatric_y(j,k);
                end
            end
        end
    end
    newProb_y=newProb_y/sum(newProb_y);
    %     newProb_y=ones(length(littleInters_y)-1,1);
%     for i=1:length(littleInters_y)-1
%         low=littleInters_y(i);high=littleInters_y(i+1);
%         for t=1:length(xuhao_y)
%             j=xuhao_y(t);
%             for k=1:6
%                 if ~(mean_y(j)+(k-4)*std_y(j)>high||mean_y(j)+(k-3)*std_y(j)<low)
%                     newProb_y(i)=newProb_y(i)*probMatric_y(j,k);
%                 end
%             end
%         end
%     end
%     newProb_y=newProb_y/sum(newProb_y);
%     newProb_x=ones(length(littleInters_x)-1,1);
%     for i=1:length(littleInters_x)-1
%         low=littleInters_x(i);high=littleInters_x(i+1);
%         for t=1:length(xuhao_x)
%             j=xuhao_x(t);
%             for k=1:6
%                 if ~(mean_x(j)+(k-4)*std_x(j)>high||mean_x(j)+(k-3)*std_x(j)<low)
%                     newProb_x(i)=newProb_x(i)*probMatric_x(j,k);
%                 end
%             end
%         end
%     end        
%     newProb_x=newProb_x/sum(newProb_x);