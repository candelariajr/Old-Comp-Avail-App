/**
 * Created by Frayo on 1/16/2017.
 */
$(function(){
    addEvents();
    populateSearch();
    launchSearch();
    launchAdd();
});

function addEvents(){
    $(".hotspot").click(function(){
        $(".hotspot > dt").removeClass('selected');
        $("#newTop").val('');
        $("#newRight").val('');
        $(this).children("dt").addClass('selected').draggable(
            {
                drag: function(){
                    var coordinates = $(this).position();
                    $("#newTop").val(parseInt(coordinates.top/2));
                    $("#newRight").val(parseInt(coordinates.left/2));
                }
            }
        );
        populateOriginalParamsWithName($(this).text());
    })
}

function populateSearch(){
    //select id=combobox
    $.ajax({
        url: "getData.php?names=true",
        success: function(result){
           //alert(JSON.parse(result).data[1].computer_name);
            var data = JSON.parse(result).data;
            for(var i = 0; i < data.length; i++){
                $("#combobox").append($('<option/>', {
                    value: data[i].id,
                    text: data[i].computer_name
                }));
            }
        }
    });
}

function populateOriginalParams(id){
    $.ajax({
        url: "getData.php?id=" + id,
        success: function(result){
            //alert(JSON.parse(result).data[1].computer_name);
            var data = JSON.parse(result).data[0];
            $("#originalName").text(data.computer_name);
            $("#originalTop").text(data.top_pos);
            $("#originalRight").text(data.left_pos);
            $("#originalTableName").text(data.table_name);
            $("#originalSeat").text(data.seat);
            $("#originalFloor").text(data.floor);
            $('#originalType').text(data.computer_type);
            $('#originalPublic').attr({
                data: data.is_public
            }).html(displayYesNo(data.is_public));
            $('#originalExcluded').attr({
                data: data.is_excluded
            }).html(displayYesNo(data.is_excluded));
            $('#originalDedicated').attr({
                data: data.is_dedicated
            }).html(displayYesNo(data.is_dedicated));
            $('#originalPilot').attr({
                data: data.is_pilot
            }).html(displayYesNo(data.is_pilot));
            if(data.floor = returnFloor()){
                selectOnThisFloor(data.computer_name);
            }
            $('#recordID').html("Id: <span id='recordIDNum'>"  + data.id + "</span>");
        }
    });
}

function populateOriginalParamsWithName(name){
    $.ajax({
        url: "getData.php?name=" + name +"&floor=" + returnFloor(),
        success: function(result){
            //alert(JSON.parse(result).data[1].computer_name);
            var data = JSON.parse(result).data[0];
            $("#originalName").text(data.computer_name);
            $("#originalTop").text(data.top_pos);
            $("#originalRight").text(data.left_pos);
            $("#originalTableName").text(data.table_name);
            $("#originalSeat").text(data.seat);
            $("#originalFloor").text(data.floor);
            $('#originalType').text(data.computer_type);
            //$('#originalPublic').data(data.is_public).text(displayYesNo(data.is_public));
            $('#originalPublic').attr({
                data: data.is_public
            }).html(displayYesNo(data.is_public));
            $('#originalExcluded').attr({
                data: data.is_excluded
            }).html(displayYesNo(data.is_excluded));
            $('#originalDedicated').attr({
                data: data.is_dedicated
            }).html(displayYesNo(data.is_dedicated));
            $('#originalPilot').attr({
                data: data.is_pilot
            }).html(displayYesNo(data.is_pilot));
            $('#recordID').html("Id: <span id='recordIDNum'>"  + data.id + "</span>");
        }
    });
}

function displayYesNo(value){
    if(value == 1){
        return "Yes";
    }else{
        return "No";
    }
}

function selectOnThisFloor(name){
    $(".hotspot > dt").removeClass('selected');
    $('.hotspot > dt:contains("'+ name +'")').trigger('click');
}

function returnFloor(){
    var result = null,
        tmp = [];
    location.search
        .substr(1)
        .split("&")
        .forEach(function (item) {
            tmp = item.split("=");
            if (tmp[0] === "id") result = decodeURIComponent(tmp[1]);
        });
    return result;
}


function launchSearch(){
    $('#dialog').dialog({
        autoOpen:false,
        buttons: {
            OK : function(){
                //alert("OK");
                //alert($('#combobox').val());
                populateOriginalParams($('#combobox').val());
                $(this).dialog("close");
            }
        }
    });
    $('#searchButton').click(function(){
        addCombo();
        $('#dialog').dialog("open");
    });
}

function addCombo() {
    $.widget( "custom.combobox", {
        _create: function() {
            this.wrapper = $( "<span>" )
                .addClass( "custom-combobox" )
                .insertAfter( this.element );

            this.element.hide();
            this._createAutocomplete();
            this._createShowAllButton();
        },

        _createAutocomplete: function() {
            var selected = this.element.children( ":selected" ),
                value = selected.val() ? selected.text() : "";

            this.input = $( "<input>" )
                .appendTo( this.wrapper )
                .val( value )
                .attr( "title", "" )
                .addClass( "custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left" )
                .autocomplete({
                    delay: 0,
                    minLength: 0,
                    source: $.proxy( this, "_source" )
                })
                .tooltip({
                    classes: {
                        "ui-tooltip": "ui-state-highlight"
                    }
                });

            this._on( this.input, {
                autocompleteselect: function( event, ui ) {
                    ui.item.option.selected = true;
                    this._trigger( "select", event, {
                        item: ui.item.option
                    });
                },

                autocompletechange: "_removeIfInvalid"
            });
        },

        _createShowAllButton: function() {
            var input = this.input,
                wasOpen = false;

            $( "<a>" )
                .attr( "tabIndex", -1 )
                .attr( "title", "Show All Items" )
                .tooltip()
                .appendTo( this.wrapper )
                .button({
                    icons: {
                        primary: "ui-icon-triangle-1-s"
                    },
                    text: false
                })
                .removeClass( "ui-corner-all" )
                .addClass( "custom-combobox-toggle ui-corner-right" )
                .on( "mousedown", function() {
                    wasOpen = input.autocomplete( "widget" ).is( ":visible" );
                })
                .on( "click", function() {
                    input.trigger( "focus" );

                    // Close if already visible
                    if ( wasOpen ) {
                        return;
                    }

                    // Pass empty string as value to search for, displaying all results
                    input.autocomplete( "search", "" );
                });
        },

        _source: function( request, response ) {
            var matcher = new RegExp( $.ui.autocomplete.escapeRegex(request.term), "i" );
            response( this.element.children( "option" ).map(function() {
                var text = $( this ).text();
                if ( this.value && ( !request.term || matcher.test(text) ) )
                    return {
                        label: text,
                        value: text,
                        option: this
                    };
            }) );
        },

        _removeIfInvalid: function( event, ui ) {

            // Selected an item, nothing to do
            if ( ui.item ) {
                return;
            }

            // Search for a match (case-insensitive)
            var value = this.input.val(),
                valueLowerCase = value.toLowerCase(),
                valid = false;
            this.element.children( "option" ).each(function() {
                if ( $( this ).text().toLowerCase() === valueLowerCase ) {
                    this.selected = valid = true;
                    return false;
                }
            });

            // Found a match, nothing to do
            if ( valid ) {
                return;
            }

            // Remove invalid value
            this.input
                .val( "" )
                .attr( "title", value + " didn't match any item" )
                .tooltip( "open" );
            this.element.val( "" );
            this._delay(function() {
                this.input.tooltip( "close" ).attr( "title", "" );
            }, 2500 );
            this.input.autocomplete( "instance" ).term = "";
        },

        _destroy: function() {
            this.wrapper.remove();
            this.element.show();
        }
    });

    $( "#combobox" ).combobox();
    $( "#toggle" ).on( "click", function() {
        $( "#combobox" ).toggle();
    });
}

function submit(){
    var idContainer = $("#recordIDNum").html();
    if(idContainer != undefined){
        $.ajax({
            url: "alterData.php?"
            + "id=" + filterNull(idContainer)
            + "&computer_name=" + filterNull($("#newName").val())
            //PER INITIAL DEPLOYMENT: WERE NOT ALLOWING THE ADJUSTMENT OF MAP COORDINATES
            //    - JP/JC
            + "&top_pos=" + filterNull($("#newTop").val())
            + "&left_pos=" + filterNull($("#newRight").val())
            + "&table_name=" + filterNull($("#newTableName").val())
            + "&seat=" + filterNull($("#newSeat").val())
            + "&floor=" + $("#newFloor").val()
            + "&computer_type=" + $("#newType").val()
            + "&is_public=" + $("#newPublic").val()
            + "&is_excluded=" + $("#newExcluded").val()
            + "&is_dedicated=" + $("#newDedicated").val()
            + "&is_pilot=" + $("#newPilot").val(),
            success: function(result){
                $("#messageContent").html(result);
                $("#dialog-message").dialog({
                    modal: true,
                    buttons: {
                        Ok: function() {
                            $(this).dialog("close");
                            location.reload();
                        }
                    }
                });
            }
        });
    }
    else{
        makeGenericMessageDialog("Cannot submit changes where no machine is selected!");
    }
}

function filterNull(element){
    return (element == undefined || element == "") ? "null" : element;
}

function launchAdd(){
    $('#addMachineDialog').dialog({
        autoOpen:false,
        buttons: {
            OK : function(){
                //alert("OK");
                //alert($('#combobox').val());
                addMachine();
            },
            Cancel : function() {
                $(this).dialog("close");
            }
        }
    });
    $('#addButton').click(function(){
        $('#addMachineDialog').dialog("open");
    });
}

function addMachine(){
    var missingValues = false;
    //20/20 Hindsight: Should have done this better. With the form generated with self-referencing so
    //the elements could be valuated over iteration.
    //This is gross: I am sorry. "Weeks of programming can save you hours of planning"
    var addName = $("#addName").val();
    var addTop = $("#addTop").val();
    var addLeft = $("#addRight").val();
    var addTableName = $("#addTableName").val();
    var addSeat = $("#addSeat").val();
    var addFloor = $("#addFloor").val();
    var addType = $("#addType").val();
    var addPublic = $("#addPublic").val();
    var addExcluded = $("#addExcluded").val();
    var addDedicated = $("#addDedicated").val();
    var addPilot = $("#addPilot").val();

    //Forgive me of my sin. Please ignore this, and pretend is not there. This is the kind of spaghetti
    //that people revoke CS Degrees over.
    if(addName == ""||
        addTop == undefined ||
        addLeft == undefined ||
        addTableName == undefined ||
        addSeat == undefined){
        makeGenericMessageDialog("Missing Values!");
        missingValues = true;
    }
    if(!missingValues){
        $.ajax({
            url: "alterData.php?"
            + "computer_name=" + addName
            + "&top_pos=" + addTop
            + "&left_pos=" + addLeft
            + "&table_name=" + addTableName
            + "&seat=" + addSeat
            + "&floor=" + addFloor
            + "&computer_type=" + addType
            + "&is_public=" + addPublic
            + "&is_excluded=" + addExcluded
            + "&is_dedicated=" + addDedicated
            + "&is_pilot=" + addPilot,
            success: function(result){
                $("#addMessageContent").html(result);
                $("#add-dialog-message").dialog({
                    modal: true,
                    buttons: {
                        Ok: function() {
                            $(this).dialog("close");
                            location.reload();
                        }
                    }
                });
            }
        });
    }
}

function makeGenericMessageDialog(message){
    $('#genericContent').html(message);
    $('#generic-dialog').dialog({
        buttons: {
            OK : function(){
                //alert("OK");
                //alert($('#combobox').val());
                $(this).dialog("close");
            }
        }
    });
}