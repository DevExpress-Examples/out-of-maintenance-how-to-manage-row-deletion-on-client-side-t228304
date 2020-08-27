<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to manage row deletion on client side</title>
    <!--region #Script-->
    <script>
        function DeleteSelectedRows(s, e) {
            var keys = GridView.GetSelectedKeysOnPage();
            var rowsCount = GridView.GetVisibleRowsOnPage();
            if (keys.length == rowsCount) {
                alert('You cannot delete all rows on a page!');
                GridView.UnselectRowsByKey(keys);
            } else {
                if (confirm('Are you sure you want to delete rows with keys: [' + keys.toString() + ']')) {
                    alert('Data editing is not allowed in this demo!');
                    keys.forEach(function (key, index) {
                        GridView.DeleteRowByKey(key);
                    });
                }
            }
        };
    </script>
    <!--endregion #Script-->
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="GridView" ClientInstanceName="GridView" 
            runat="server"
            AutoGenerateColumns="False"
            DataSourceID="ProductsDataSource"
            KeyFieldName="ProductID"
            OnRowDeleting="GridView_RowDeleting">
            <Columns>
                <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0"></dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False"></EditFormSettings>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="3"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="4"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="5"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="6"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="7"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="8"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="9"></dx:GridViewDataTextColumn>
                <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="10"></dx:GridViewDataCheckColumn>
                <dx:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="11"></dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager PageSize="5"></SettingsPager>
            <SettingsEditing>
                <BatchEditSettings EditMode="Row" />
            </SettingsEditing>
        </dx:ASPxGridView>

        <div style="margin: 10px 0;">
            <dx:ASPxButton ID="Button" runat="server" Text="Delete selected rows" AutoPostBack="false">
                <ClientSideEvents Click="DeleteSelectedRows" />
            </dx:ASPxButton>
        </div>

        <asp:AccessDataSource ID="ProductsDataSource" runat="server"
            DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [Products]"
            DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
        </asp:AccessDataSource>
    </form>
</body>
</html>