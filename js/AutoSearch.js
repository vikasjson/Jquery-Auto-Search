$(document).ready(function (){

    $("#txtBoxArea").autocomplete({

        source: function (request, response) {
            var city = "jaipur";           
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "WebService.asmx/GetArea",
                data: "{'area':'" + $("#txtBoxArea").val() + "','city':'" + city + "'}",
                dataType: "json",
                success: function (data) {
                    if (data.d == "") {
                        alert("Delivery Is Not Available On This Area  ");
                    }
                    else {
                        response(data.d);
                    }
                },
                error: function (result){
                    alert("Error");
                }
            });
        }
    });

});