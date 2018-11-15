
% relevant data inputs for the model
StartDate = '29011985' %yahoofinance is fixed at this date
EndDate = '15042008'
% Download time series of DJIA index value
DJIAdata = hist_stock_data(StartDate,EndDate,'^DJI')

% Build matrix data for DJIA closing price
DJIADates = datenum(DJIAdata.Date)
DJIAClosingPrice = DJIAdata.Close
DJIAPriceData = [DJIADates DJIAClosingPrice]

% extract DJIA components
filex = 'https://en.wikipedia.org/wiki/Historical_components_of_the_Dow_Jones_Industrial_Average';
fullList = webread(filex)

-----------------------------------------------------
%Ignore
% Build Data Table for DJIA closing price
DJIADates = datenum(DJIAdata.Date)
DJIAClosingPrice = DJIAdata.Close
DJIAClose = DataTable()
DJIAClose{1,1:2} = {'Date', 'Closing Price'}
DJIAClose{2:length(DJIADates),:} = {DJIADates,DJIAClosingPrice}