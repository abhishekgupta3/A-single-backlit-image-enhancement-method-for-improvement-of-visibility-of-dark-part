% Lightness order error
function LOE = loe(I, Ie)

[N, M, ~] = size (I);

L = max(I,[],3);
Le = max(Ie,[],3);

r = 50 / min (M,N);
Md = round(M*r);
Nd = round(N*r);
Ld = imresize(L,[Nd Md]);
Led = imresize(Le,[Nd Md]);

RD = zeros (Nd,Md);
size (RD)

for y = 1:Md
    for x = 1:Nd
        E = xor((Ld(x,y)>=Ld(:,:)),(Led(x,y)>=Led(:,:)));
        RD(x,y) = sum(E(:));
    end
end

LOE = sum(RD(:))/(Md*Nd);

end

