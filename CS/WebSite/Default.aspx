<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<!--region #Markup-->    
        <dx:ASPxScheduler ID="ASPxScheduler1" runat="server" AppointmentDataSourceID="appointmentDataSource"  ClientIDMode="AutoID" 
            OnAppointmentRowInserted="ASPxScheduler1_AppointmentRowInserted" ResourceDataSourceID="resourceDataSource" GroupType="Resource">       
                <Storage>
                <Appointments>
                    <Mappings AppointmentId="Id" Start="StartTime" End="EndTime" Subject="Subject" AllDay="AllDay"
                        Description="Description" Label="Label" Location="Location" RecurrenceInfo="RecurrenceInfo"
                        ReminderInfo="ReminderInfo" Status="Status" Type="EventType" ResourceId ="ResourceID" />
                </Appointments>
                <Resources>
                    <Mappings ResourceId="ResourceID" Caption ="Name"/>
                    </Resources>
                 </Storage>
        </dx:ASPxScheduler>
<!--region #Markup-->    
    </div>
    <asp:ObjectDataSource ID="appointmentDataSource" runat="server" DataObjectTypeName="CustomEvent"
        TypeName="CustomEventDataSource" DeleteMethod="DeleteMethodHandler" SelectMethod="SelectMethodHandler"
        InsertMethod="InsertMethodHandler" UpdateMethod="UpdateMethodHandler" OnObjectCreated="appointmentsDataSource_ObjectCreated"/>
        <asp:ObjectDataSource ID="resourceDataSource" runat="server" SelectMethod="SelectMethodHandler" TypeName="CustomResourceDataSource" OnObjectCreated="resourceDataSource_ObjectCreated"></asp:ObjectDataSource>
    </form>
</body>
</html>
