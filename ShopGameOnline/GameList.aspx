<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameList.aspx.cs" Inherits="ShopGameOnline.GameList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div class="GameList-Content">
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
            <asp:ListView ID="gameList" runat="server" DataKeyNames="GameID" GroupItemCount="3"
                ItemType="ShopGameOnline.Models.Game" SelectMethod="GetGames">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>

                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>

                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="GameDetails.aspx?gameID=<%#:Item.GameID%>">
                                        <img src ="/Images/<%#:Item.ImagePath%>" width="180" height="225" style="border:solid" />
                                    </a>
                                    <br></br>
                                    <a href="GameDetails.aspx?gameID=<%#:Item.GameID%>" class="linkDetails">
                                        <span><%#:Item.GameName%></span>
                                    </a>
                                    <br></br>
                                    <span><b>Price: </b><button class="btn-buy"><%#:String.Format("{0:c}",Item.UnitPrice)%></button></span>
                                </td>
                            </tr>

                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </ItemTemplate>

                <LayoutTemplate>
                    <table class="table-container">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                             <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>