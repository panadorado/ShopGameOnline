<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShopGameOnline.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="nav-pagesShopping">
        <div id="ShoppingCartTitle" runat="server" class="ContentHead">
        <h1>Shopping Cart</h1>
        </div>
            <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4" ItemType="ShopGameOnline.Models.CartItem" SelectMethod ="GetShoppingCartItems" CssClass="table table-bordered nav-pagesShopping" >
                <Columns>
                    <asp:BoundField DataField="GameID" HeaderText="ID" SortExpression="GameID" HeaderStyle-CssClass="BoundField"  />
                    <asp:BoundField DataField="Game.GameName" HeaderText="Name" HeaderStyle-CssClass="BoundField" />
                    <asp:BoundField DataField="Game.UnitPrice" HeaderText="Price (each)" DataFormatString="{0:c}" HeaderStyle-CssClass="BoundField" />
                    <asp:TemplateField HeaderText="Quantity" HeaderStyle-CssClass="BoundField">
                        <ItemTemplate>
                            <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" BackColor="#242424"  Text="<%#: Item.Quantity %>" CssClass="BoundField"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Total" HeaderStyle-CssClass="BoundField" >
                        <ItemTemplate>
                            <%#: String.Format("{0:c}", ((Convert.ToDouble(Item.Quantity)) * Convert.ToDouble(Item.Game.UnitPrice)))%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Remove Item" HeaderStyle-CssClass="BoundField" >
                        <ItemTemplate>
                            <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        <div>
            <p></p>
            <strong>
                <asp:Label ID="LabelTotalText" runat="server" Text="Order Total:"></asp:Label>
                <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label><br />
                <asp:Button ID="UpdateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click" BackColor="#242424" CssClass="btn-update"/>
            </strong>
        </div>
        <br />
    </div>
</asp:Content>
