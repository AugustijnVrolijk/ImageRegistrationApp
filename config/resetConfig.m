config = struct;
config.name = "default_config";

config.metric = struct;
config.optimiser = struct;
config.data = struct;

config.data.ExtraColumns = {};
config.data.FetchDataCols = {};

config.data.ExtraColumns = {"Date = getDate(Name)", "IDName = getIDName(Name, Date)"};
config.data.FetchDataCols = {"Image = getImg(Name, Path)", "Mask = getMask(Name, Path)"};

callingFileDir = fileparts(mfilename('fullpath'));
savePath = fullfile(callingFileDir, "default_config.mat");

save(savePath, "config")

clear
clc