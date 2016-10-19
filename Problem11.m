allday=zeros(1,7);
for y = 1601:2000 % go through each year
   for m = 1:12 % each month
      d = datenum([y,m,13]); % get the datenum for the 13 of the year y and month m
      day=weekday(d); % extract the weekday from the datenum
      allday(day)=allday(day)+1;% add 1 to friday
   end
end
allday