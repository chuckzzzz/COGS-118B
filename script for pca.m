data = csvread('new_data2.csv');
data_2 = zeros(4100,240068);
for i = 1:4100
    disp(i);  
    data_2(i,1:240068) = data((i-1)*240068+1:i*240068);
end

data_3 = data_2*data_2';
[V,D] = eig(data_3);
[Vsorted, Dsorted] = eigsort(V,D);
data_mean = mean(data_2,1);
data_mean_dup = repmat(data_mean,4100,1);

data_sz = data_2 - data_mean_dup;
U = Vsorted * data_sz;
%%normU = normr(U);
normU = zeros(4100,240068);

%%Scratch normalization
for i = 1:4100
    disp(i);
    row_mean = mean(U(i,:));
    row_sd = std(U(i,:));
    for j = 1:240068
        normU(i,j) = (U(i,j) - row_mean)/row_sd;
    end  
end

c = zeros(4100,4100);
for i = 1:4100
    disp(i)
    c(i,:) = (normU*data_sz(i,:)')';
end


coordinates = c(i,1:20);




