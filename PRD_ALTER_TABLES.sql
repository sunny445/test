--- Alter script to add columns to [tblTransferBatch]
alter table [xfr].[tblTransferBatch] 
ADD 
RetryFlag YES_NO_FLAG NULL,
BatchRetries numeric(38,0) NULL, 
BatchRetryDelay numeric(38,0) NULL 

--- Alter script to add columns to [tblBatchLog]
alter table [xfr].[tblBatchLog] 
ADD 
AttemptNo numeric(18,0) NULL,
MasterBatchID numeric(38,0) NULL

--- Alter script to add columns to [tblLocation]
alter table [xfr].[tblLocation] 
ADD 
LocationPortAddress varchar(256) NULL,
HostKey varchar(256) NULL

--- Alter script to add columns to [tblTransferConfig]
alter table [xfr].[tblTransferConfig] 
ADD 
CheckFileSize YES_NO_FLAG NULL, 
MinFileSize decimal(18,2) NULL

-- Update script to set the CheckFileSize flag to 'Y'
update [xfr].[tblTransferConfig] set CheckFileSize = 'Y'

-- Update script to set the RetryFlag to 'N'
update [xfr].[tblTransferBatch] set RetryFlag = 'N'