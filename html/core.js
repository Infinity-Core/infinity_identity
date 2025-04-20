jQuery(function () {

    function display(bool) {
        if (bool) {
            jQuery("#identity_manager").show();
        } else {
            jQuery("#identity_manager").hide();
        }
    }
    display(false)

    window.addEventListener('message', function(event) {
        let item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }

        if(item.status == true){

            // Form to send datas
            $('.make_history').unbind('click').click(function(){

                document.getElementById("form_register").addEventListener("submit",function(e){
                    e.preventDefault();

                    let lastname    = $("#lastname").val().trim();
                    let firstname   = $("#firstname").val().trim();
                    let nationality = $("#nationality").val().trim();
                    let years       = $("#years").val().trim();
                    let sex         = $("#sex").val().trim();

                    if(lastname.length >= 4 && firstname.length >= 4 && nationality.length >= 4 && years.length >= 2 && years >= 14 && years <= 100 && sex){
                        $.post(`https://${GetParentResourceName()}/make_character`, JSON.stringify({
                            lastname    : lastname,
                            firstname   : firstname,
                            nationality : nationality,
                            years       : years,
                            sex         : sex
                        }));
                        return
                    }
                });
            });
        }
    })
})