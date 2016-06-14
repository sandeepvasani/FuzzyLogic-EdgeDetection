function [ Igray3 ] = FIS1( Igray )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[w,h]=size(Igray);
Igray3=rand(w,h);
for x=1:w
    for y=1:h
        if trimf_black(double(Igray(x,y)))>trimf_white(double(Igray(x,y)))
         %Igray3(x,y)=max(trimf_black(double(Igray(x,y))),trimf_white(double(Igray(x,y))));
         %max(trimf_black(Igray(x,y)),trimf_white(Igray(x,y)));
        Igray3(x,y)=0;
        else 
            Igray3(x,y)=1;
        end
    end
end
  Igray3=im2bw(Igray3);      
end

