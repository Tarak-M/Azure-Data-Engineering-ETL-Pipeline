/****** Object:  StoredProcedure [dbo].[metadata_usp]    Script Date: 8/31/2026 7:18:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[metadata_usp] @status varchar(50),@stablename varchar(50)
as
begin
update metadata set status=@status where sourcetable=@stablename
end
GO


