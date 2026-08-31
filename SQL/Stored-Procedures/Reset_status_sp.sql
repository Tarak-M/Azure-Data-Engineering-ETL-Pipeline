/****** Object:  StoredProcedure [dbo].[reset_status]    Script Date: 8/31/2026 7:19:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[reset_status]
as
begin
update metadata set status='ready'
end
GO


