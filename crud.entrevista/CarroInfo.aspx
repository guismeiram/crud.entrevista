<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarroInfo.aspx.cs" Inherits="crud.entrevista.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <br />

<table class="nav-justified">
    <tr>
        <td colspan="2" style="height: 20px">
            <asp:Label ID="Label1" runat="server" Text="Placa do carro"></asp:Label>
            <asp:TextBox ID="txtPlaca" runat="server"></asp:TextBox>
        </td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="height: 25px">
            <asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
            <asp:TextBox ID="txtId" runat="server" Width="129px"></asp:TextBox>
        </td>
        <td style="height: 25px"></td>
        <td style="height: 25px"></td>
        <td style="height: 25px"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btgAdd" runat="server" Text="Add" OnClick="btgAdd_Click" />
            <asp:Button ID="btgUpdate" runat="server" Text="Update" OnClick="btgUpdate_Click" />
            <asp:Button ID="btgDelete" runat="server" Text="Delete" OnClick="btgDelete_Click" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btgCancel" runat="server" Text="Cancel Operation" Width="184px" OnClick="btgCancel_Click" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td id="dgvCarro">
            <asp:GridView ID="gridCarro" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gridCarro_SelectedIndexChanged1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="placa" HeaderText="placa" SortExpression="placa" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCon %>" SelectCommand="SELECT * FROM [Carro]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
