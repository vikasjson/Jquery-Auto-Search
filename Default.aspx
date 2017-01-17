<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Auto Search</title>

    <%--To Implement The Auto Search all these Js/css File Necessary to Import in Your Project--%>
    <%--Jquery Ui css Is used for auto search list design--%>
    <%--Jquery Ui js Is used for filling auto search list --%>
    <%-- if you are using jquery.js and jquery-ui.js both in a project then you have to import jquery.js first and below jquery.js you have to import jquery-ui.js
    otherwise if you import jquery-ui.js first and then import jquery.js , then jquery-ui.js will not work because jquery-ui.js depends on jquery.js, it requires jquery.js to complete 
    its funcationality --%>

    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <script src="js/AutoSearch.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row" style="padding-top: 40px; padding-left: 40px">
                <div class="col-md-2">
                    <h4 style="color: green">Search Area:</h4>
                </div>
                <div class="col-md-2">                   
                    <input type="text" id="txtBoxArea" class="form-control" style="margin-left:-100px" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
