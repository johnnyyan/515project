% before running this script
% comment out this line in multi_logreg_run.m 
% reg=[1e-2,1e-2,1e-2,1e-3];
function [] = multi_logreg_run_all()
    clc;
    for indi = 1:4
        for indj = 1:4
            for indk = 1:4
                for indl = 1:4
                    reg=[10^-indi,10^-indj,10^-indk,10^-indl];
                    disp('++++++++++++++++++++++');
                    fprintf('%d-%d-%d-%d\n',indi,indj,indk,indl);
                    multi_logreg_run
                end
            end
        end
    end
end