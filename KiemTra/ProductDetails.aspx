<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="KiemTra.ProductDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="datalistDetail" runat="server" RepeatDirection="Horizontal" 
        Width="394px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="4">
                        <asp:Image ID="Image1" runat="server" Height="109px" 
                            ImageUrl='<%# "/HinhAnh/"+Eval("HINHANH") %>' />
                    </td>
                    <td>
                        Tên sản phẩm:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TEN_SP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Giá:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIASP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Thông số kỹ thuật:
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DACTA") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
