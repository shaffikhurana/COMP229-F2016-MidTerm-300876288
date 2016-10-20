﻿<%@ Page Title="Todo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoList.aspx.cs" Inherits="COMP229_F2016_MidTerm_StudentID.TodoList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">

                <h1>Todo List</h1>
                <a href="TodoDetails.aspx" class="btn btn-success btn-sm">
                    <i class="fa fa-plus"></i> Add item
                </a>

     <asp:GridView runat="server" ID="TodoGridView"  AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover"
         DataKeyNames="TodoId" OnRowDeleting="TodoGridView_RowDeleting" AllowPaging="true" PageSize="5" OnPageIndexChanging="TodoGridView_PageIndexChanging"
         AllowSorting="true" OnSorting="TodoGridView_Sorting"
         OnRowDataBound="TodoGridView_RowDataBound">
       <Columns>
           <asp:BoundField DataField="TodoId" HeaderText="ID" Visible="true" SortExpression="TodoId" />
            <asp:BoundField DataField="TodoDescription" HeaderText="Description" Visible="true" SortExpression="TodoDescription" />
            <asp:BoundField DataField="TodoNotes" HeaderText="Notes" Visible="true" SortExpression="TodoNotes" />
            <asp:BoundField DataField="Completed" HeaderText="Completed" Visible="true" SortExpression="Completed" />

         <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit"
                            NavigateUrl="TodoDetails.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                            runat="server" DataNavigateUrlFields="TodoId"
                            DataNavigateUrlFormatString="TodoDetails.aspx?TodoId={0}" />

           <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />

       </Columns>


     </asp:GridView>

                </div>
            </div>

    </div>

</asp:Content>
