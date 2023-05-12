<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="OnlineCarRenatl.View.Admin.Customers" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <h3 class="text-danger pl-4" style="text-align:center;margin:30px 0px">Manage Customers</h3>
                    <img  src="../../Assets/Img/customers.png" width="100" height="100" style="margin: 0px 0px 40px 20px"/></div>
                <div class="col"></div>
            </div>
    <div class="row" style="margin:-20px 0px 0px 0px;">
        <div class="col">
    <form>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Name</label>
    <input type="text" class="form-control" id="CustNameTb"  placeholder="Enter Customer's Name" runat="server">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Address</label>
    <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Phone</label>
    <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Phone" runat="server">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Password</label>
    <input type="text" class="form-control" id="PasswordTb" placeholder="Enter Password" runat="server">
  </div>
        <br />

  <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
  <asp:Button type="submit" ID="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click" />
  <asp:Button type="submit" ID="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />
  <asp:Button type="submit" ID="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click" />
</form>
    </div>
</div>
            </div>
    <div class="col-md-8">
        <h1>Customers List</h1>
        <asp:GridView runat="server" ID="CustomersList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CsutList_SelectedInedxChanged">
            <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
        </asp:GridView>
    </div>
        </div>
        </div>
    <br />
    <br />
</asp:Content>
