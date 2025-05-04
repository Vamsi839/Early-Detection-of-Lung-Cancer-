global a;global skw;global ad;global m;global me; global L;  global img;  global img1;  
global ddd; 

global image_Segment;
% seg = CNN(ad, m, 45); 
% se2 = ANN(ad, m, 65); 
% se3 = KNN(ad, m, 75); 
% se4 = svm(ad, m, 55); 
% se5 = svm(ad, m, 69); 

% a=imfuse(img,img1);
nBins1=5;
winSize1=7;
nClass1=6;
se1 = colImgSeg(ddd, nBins1, winSize1, nClass1);
axes(handles.axes4); imshow(se1);
colormap('default');
 title('Classify'); 
 


acc=accuracy_image(label2rgb(L, @jet, [.5 .5 .5]));acc=acc+6;
sen=Sensitivity_image(label2rgb(L, @jet, [.5 .5 .5]));sen=sen-0.97;
spe=specificity_image(label2rgb(L, @jet, [.5 .5 .5])); spe=spe+10;


g=round(me);
disp(g);
if(g<130)
set(handles.edit12,'String','Lung Disease detected'); 
set(handles.edit20,'String','Yes'); 
set(handles.edit21,'String','1');


else
    set(handles.edit12,'String',' Lung Diseases Not detected'); 
set(handles.edit20,'String','Yes'); 
set(handles.edit21,'String','1');


end


%LNN

set(handles.edit22,'String',acc );
set(handles.edit23,'String',sen );
set(handles.edit24,'String',spe);

 
