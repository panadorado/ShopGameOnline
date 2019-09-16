﻿<%@ Page Title="Game Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="ShopGameOnline.GameDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="gameDetail" runat="server" ItemType="ShopGameOnline.Models.Game" SelectMethod ="GetDetails" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.GameName %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td style="box-shadow: 5px 10px 8px #000">
                        <img src="/Images/<%#:Item.ImagePath %>" style="border:solid; height:225px" alt="<%#:Item.GameName %>"/>
                    </td>
                    <td>&nbsp;</td>
                    <td class="nav-PagesContent" style="box-shadow: 5px 10px 8px #000">
                        <p>
                            <b>Description: </b><%#:Item.Description %>
                            <br /><span><b>Price:</b>&nbsp;<%#:String.Format("{0:c}",Item.UnitPrice)%></span>
                            <br /><span><b>Game Number:</b>&nbsp;<%#:Item.GameID %></span>
                            <br /><i class="fas fa-shopping-cart"></i>
                            <a class="btn-buy" href="AddToCart.aspx?gameID=<%#:Item.GameID%>">
                                <span><b>Add To Cart<b></span>
                            </a>
                        </p>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

