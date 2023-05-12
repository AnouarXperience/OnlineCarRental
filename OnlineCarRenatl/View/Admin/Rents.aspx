<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="OnlineCarRenatl.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <h3 class="text-danger pl-4" style="text-align:center;margin:30px 0px">Rented Cars</h3>
                    <img  src="../../Assets/Img/rented.jpg" width="100" height="100" style="margin: 0px 0px 40px 15px"/></div>
                <div class="col"></div>
            </div>
    <div class="row" style="margin:-20px 0px 0px 0px;">
        <div class="col">
    <form>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Name</label>
    <input type="text" class="form-control" id="CustNameTb"  placeholder="Enter Customer's Name">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Address</label>
    <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Phone</label>
    <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Phone">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Customer Password</label>
    <input type="text" class="form-control" id="Text1" placeholder="Enter Password">
  </div>
        <br />
        <br />
  <button type="submit" class="btn btn-danger">Edit</button>
  <button type="submit" class="btn btn-danger">Add</button>
  <button type="submit" class="btn btn-danger">Delete</button>
</form>
    </div>
</div>
            </div>
    <div class="col-md-8">
        <table class="table">

        </table>
    </div>
        </div>
        </div>
    <br />
    <br />
</asp:Content>
