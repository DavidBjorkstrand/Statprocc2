normals = zeros(1, 1000);
for i = 1:1000
   normals(i) = 0.1*m_normal(); 
end

figure;
normplot(normals);
figure;
hist(normals);
var(normals)
mean(normals)