<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="KiemTra.Products" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style4
    {
        height: 27px;
    }
    .style5
    {
        width: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" Width="638px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="style5" rowspan="4">
                        <asp:Image ID="Image1" runat="server" Height="85px" 
                            ImageUrl='<%# "/HinhAnh/"+Eval("HINHANH") %>' Width="93px" />
                    </td>
                    <td class="style4">
                        Tên sản phẩm:</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TEN_SP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Giá:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIASP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl='<%# "ProductDetails.aspx?id_sp="+Eval("IDSP") %>'>Chi tiết</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</p>
</asp:Content>
