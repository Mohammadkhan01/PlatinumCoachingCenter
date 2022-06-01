<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="font-family:Arial">
    &nbsp;&nbsp;
    <fieldset style="width:250px" >
        
        <legend > Contact us</legend>
       <p > Suite-1, Shop-3
        <br />
        908 Canterbury Road
        Roselands, NSW, Australia</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<table >
            <tr>
                <td>
                  <b>Name :</b>
                </td>
                 <td>
                     <asp:TextBox ID="TxtName" Width ="200px" runat="server"></asp:TextBox>
                </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate ="txtName"
                         Text="*"
                         ForeColor="red"></asp:RequiredFieldValidator>
                </td>
                
            </tr>

             <tr>
                <td>
                  <b>Email :</b>
                </td>
                 <td>
                     <asp:TextBox ID="TxtEmail" Width ="200px" runat="server"></asp:TextBox>
                </td>
                 <td>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         display="Dynamic" ErrorMessage="RequiredFieldValidator" ControlToValidate ="txtEmail"></asp:RequiredFieldValidator>
                    
                </td>
                
            </tr>


             <tr>
                <td>
                  <b>Subject :</b>
                </td>
                 <td>
                     <asp:TextBox ID="TxtSubject" Width ="200px" runat="server"></asp:TextBox>
                </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is Required" ControlToValidate ="txtSubject"
                         Text="*"
                         ForeColor="red"></asp:RequiredFieldValidator>
                </td>
                
            </tr>

             <tr>
                <td>
                  <b>Comments :</b>
                </td>
                 <td>
                     <asp:TextBox ID="TxtComment" Width ="207px" runat="server" TextMode="MultiLine" Height="92px"></asp:TextBox>
                </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ErrorMessage="Comments are Required" ControlToValidate ="txtComment"
                         Text="*"
                         ForeColor="red"></asp:RequiredFieldValidator>
                </td>
                
            </tr>

            <tr>
                <td colspan ="3">
                    <asp:ValidationSummary ID ="ValidationSummary1" HeaderText="Please fix these following error" ForeColor ="Red" runat="server" />
                   
                     </td>
            </tr>
            <tr>
                <td colspan ="3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan ="3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="color: #FFFFFF; font-weight: 700; background-color: #000066" Width="301px" />
                </td>
            </tr>
        </table>
    
    </fieldset>
        
        </div>
    
  
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3310.5269196064646!2d151.07818811521182!3d-33.92757338064008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12bbc5369a50cd%3A0x3c1fcc4c53b353a3!2s908+Canterbury+Rd%2C+Roselands+NSW+2196!5e0!3m2!1sen!2sau!4v1501765588849" frameborder="0" style="border-style: none; border-color: inherit; border-width: 0; height: 279px; width: 400px;" allowfullscreen></iframe>

</asp:Content>

