
//	CUSTOM SCRIPTS

$(function() {

	//make menus drop automatically
	$('ul.nav li.dropdown').hover(function() {
		$('.dropdown-menu', this).slideDown('fast');
	}, function() {
		$('.dropdown-menu', this).slideUp('fast');
	});//hover
	
	//show tooltips
	$("[data-toggle='tooltip']").tooltip({ animation: true});
	$('.mytooltip').tooltip();
	
	//	slider / carousel
	$('.carousel').carousel({
		interval: false
	});

	//	scrollbars
	$(document).ready(function() {
		var nicesx = $(".boxscroll").niceScroll({
		touchbehavior:false,
		cursorcolor:"#303641",
		cursoropacitymax:0.7,
		cursorwidth:10
		});
	
	});
	  
	$(document).ready(function() {
		var nicesx = $("body").niceScroll({
			touchbehavior:false,
			cursorcolor:"#CECEBF",
			cursoropacitymax:.9,
			cursorwidth:10,
			autohidemode:false
		});
	});
	
	
	
	//	=================================================================
	//	Chief Complaint Modal Window inside data
	// ==================================================================
	
	var selectedEffect = "slide";
		
		// most effect types need no options passed by default
		var options = {};
		// some effects have required parameters
		if ( selectedEffect === "scale" ) {
			options = { percent: 0 };
		} else if ( selectedEffect === "size" ) {
			options = { to: { width: 200, height: 60 } };
		}
		
		// run the effect
		$( "#btnClose" ).click(function() {
			$("#addCC").hide( selectedEffect, options, 500);
		});
		$( "#btnSave" ).click(function() {
			$(".formMsg").show();
			$(document).ready(function() {
                $(".formMsg").html("CC Save, you can save another or close window");
            });
		});
		
		
		$( "#btnAddCC" ).click(function() {
			$(".formMsg").hide();
			$(".CCboxArea").hide( selectedEffect, options, 500);
			$("#addCC").show( selectedEffect, options, 500);
		});
		
		$( "#CC01" ).click(function() {
			$(".formMsg").hide();
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#addCC").hide( selectedEffect, options, 300);
			$("#CCbox01").show( selectedEffect, options, 500);
		});
		$( "#CC02" ).click(function() {
			$(".formMsg").hide();
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#addCC").hide( selectedEffect, options, 300);
			$("#CCbox02").show( selectedEffect, options, 500);
		});
		$( "#CC03" ).click(function() {
			$(".formMsg").hide();
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#addCC").hide( selectedEffect, options, 300);
			$("#CCbox03").show( selectedEffect, options, 500);
		});
		$( "#CC04" ).click(function() {
			$(".formMsg").hide();
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#addCC").hide( selectedEffect, options, 300);
			$("#CCbox04").show( selectedEffect, options, 500);
		});
		$( "#CC05" ).click(function() {
			$(".formMsg").hide();
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#addCC").hide( selectedEffect, options, 300);
			$("#CCbox05").show( selectedEffect, options, 500);
		});
		$( "#CC06" ).click(function() {
			$(".formMsg").hide();
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#addCC").hide( selectedEffect, options, 300);
			$("#CCbox06").show( selectedEffect, options, 500);
		});
		
		
		$( "#btnCloseSC" ).click(function() {
			$("#sentenceComp").hide( selectedEffect, options, 500);
		});
		
		
		$( "#btnAddSentence01" ).click(function() {
			$(".formMsg").hide();
			$("#addCC").hide( selectedEffect, options, 300);
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#sentenceComp").show( selectedEffect, options, 500);
		});
		$( "#btnAddSentence02" ).click(function() {
			$(".formMsg").hide();
			$("#addCC").hide( selectedEffect, options, 300);
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#sentenceComp").show( selectedEffect, options, 500);
		});
		$( "#btnAddSentence03" ).click(function() {
			$(".formMsg").hide();
			$("#addCC").hide( selectedEffect, options, 300);
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#sentenceComp").show( selectedEffect, options, 500);
		});
		$( "#btnAddSentence04" ).click(function() {
			$(".formMsg").hide();
			$("#addCC").hide( selectedEffect, options, 300);
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#sentenceComp").show( selectedEffect, options, 500);
		});
		$( "#btnAddSentence05" ).click(function() {
			$(".formMsg").hide();
			$("#addCC").hide( selectedEffect, options, 300);
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#sentenceComp").show( selectedEffect, options, 500);
		});
		$( "#btnAddSentence06" ).click(function() {
			$(".formMsg").hide();
			$("#addCC").hide( selectedEffect, options, 300);
			$(".CCboxArea").hide( selectedEffect, options, 300);
			$("#sentenceComp").show( selectedEffect, options, 500);
		});
		
		$(".CCdescription").hide();
		$("#sentenceComp").hide();	
		
		
		//	=================================================================
	//	Allergies Modal Window inside data
	// ==================================================================
	
	var selectedEffect = "slide";
		
		// most effect types need no options passed by default
		var options = {};
		// some effects have required parameters
		if ( selectedEffect === "scale" ) {
			options = { percent: 0 };
		} else if ( selectedEffect === "size" ) {
			options = { to: { width: 200, height: 60 } };
		}
		
		// run the effect
		//	Add New Allergy
		$( "#btnAddAlgs" ).click(function() {
			$(".algsList").hide( selectedEffect, options, 500);
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#addAlgs").show( selectedEffect, options, 500);
		});
		$( "#btnCloseAlgs" ).click(function() {
			$("#addAlgs").hide( selectedEffect, options, 500);
		});
		$( "#btnSaveAlgs" ).click(function() {
			$(".formMsg").show();
			$(document).ready(function() {
                $(".formMsg").html("Allergy Save, you can save another or close window");
            });
		});
		
		//	Allergies List dropdown
		$( "#algs01" ).click(function() {
			$(".algsList").hide( selectedEffect, options, 300);
			$(".algsBoxArea").hide( selectedEffect, options, 300);
			$("#algsList01").show( selectedEffect, options, 500);
		});
		$( "#algs02" ).click(function() {
			$(".algsList").hide( selectedEffect, options, 300);
			$(".algsBoxArea").hide( selectedEffect, options, 300);
			$("#algsList02").show( selectedEffect, options, 500);
		});
		$( "#algs03" ).click(function() {
			$(".algsList").hide( selectedEffect, options, 300);
			$(".algsBoxArea").hide( selectedEffect, options, 300);
			$("#algsList03").show( selectedEffect, options, 500);
		});
		$( "#algs04" ).click(function() {
			$(".algsList").hide( selectedEffect, options, 300);
			$(".algsBoxArea").hide( selectedEffect, options, 300);
			$("#algsList04").show( selectedEffect, options, 500);
		});
		
		
		//	Add reactions based on clicked Allergy
		$( "#btnAddReaction01" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#addReactionBox01").show( selectedEffect, options, 500);
		});
		$( "#btnSaveReaction01" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseReaction01" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnAddReaction02" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#addReactionBox02").show( selectedEffect, options, 500);
		});
		$( "#btnSaveReaction02" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseReaction02" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnAddReaction03" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#addReactionBox03").show( selectedEffect, options, 500);
		});
		$( "#btnSaveReaction03" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseReaction03" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnAddReaction04" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#addReactionBox04").show( selectedEffect, options, 500);
		});
		$( "#btnSaveReaction04" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseReaction04" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		
		//	List all symptoms based on click Generic Name
		$( "#btnSymptom0101" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0101").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0101" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0101" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0102" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0102").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0102" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0102" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0103" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0103").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0103" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0103" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0104" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0104").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0104" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0104" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0105" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0105").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0105" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0105" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0106" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0106").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0106" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0106" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		
		
		$( "#btnSymptom0201" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0201").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0201" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0201" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0202" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0202").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0202" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0202" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0203" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0203").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0203" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0203" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0204" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0204").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0204" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0204" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0205" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0205").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0205" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0205" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0206" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0206").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0206" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0206" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		
		
		$( "#btnSymptom0301" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0301").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0301" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0301" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0302" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0302").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0302" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0302" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0303" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0303").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0303" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0303" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0304" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0304").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0304" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0304" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0305" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0305").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0305" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0305" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0306" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0306").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0306" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0306" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		
		
		$( "#btnSymptom0401" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0401").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0401" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0401" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0402" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0402").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0402" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0402" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0403" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0403").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0403" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0403" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0404" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0404").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0404" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0404" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0405" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0405").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0405" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0405" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		
		$( "#btnSymptom0406" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 500);
			$("#symptom0406").show( selectedEffect, options, 500);
		});
		$( "#btnSaveSymptoms0406" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});
		$( "#btnCloseSymptoms0406" ).click(function() {
			$(".algsBoxArea").hide( selectedEffect, options, 300);
		});

		
		
		
		$(".algsList").hide();
		$("#algsList01").show();
		$("#symptoms").hide();
		$(".algsDescription").hide();
		$("#addAlgs").hide();	
	
	
	
/* **********************************
 * patient-dashboard.php page
 */	
 	
 	//	horizental scrollar
 	$(function() {
		$( ".severityScrollar" ).slider({
			range: "min",
			value: 50,
			min: 0,
			max: 100,
			slide: function( event, ui ) {
				$( ".percent" ).val(  ui.value + "%" );
			}
		});
		$( ".percent" ).val( $( ".severityScrollar" ).slider( "value" ) + "%" );
	});
	
	//	=================================================================
	//	Patient Dashboard - Add Symptoms Stemps
	// ==================================================================
	// run the effect
		$( "#mannequin" ).click(function() {
			$("#instructions").hide( selectedEffect, options, 500);
			$("#step1").show( selectedEffect, options, 500);
		});
		$( "#btnAddSympStep1" ).click(function() {
			$("#step1").hide( selectedEffect, options, 500);
			$("#step2").show( selectedEffect, options, 500);
		});
		$( "#btnAddSympStep2" ).click(function() {
			$("#step2").hide( selectedEffect, options, 500);
			$("#step3").show( selectedEffect, options, 500);
		});
		$( "#btnAddSympStep3" ).click(function() {
			$("#step3").hide( selectedEffect, options, 500);
			$("#step4").show( selectedEffect, options, 500);
		});
		$( "#btnAddSympStep4" ).click(function() {
			$("#step4").hide( selectedEffect, options, 500);
			$("#instructions").show( selectedEffect, options, 500);
		});
		
		$( "#btnAddSympStep1Close" ).click(function() {
			$("#step1").hide( selectedEffect, options, 500);
			$("#instructions").show( selectedEffect, options, 500);
		});
		$( "#btnAddSympStep2Close" ).click(function() {
			$("#step2").hide( selectedEffect, options, 500);
			$("#instructions").show( selectedEffect, options, 500);
		});
		$( "#btnAddSympStep3Close" ).click(function() {
			$("#step3").hide( selectedEffect, options, 500);
			$("#instructions").show( selectedEffect, options, 500);
		});
		$( "#btnAddSympStep4Close" ).click(function() {
			$("#step4").hide( selectedEffect, options, 500);
			$("#instructions").show( selectedEffect, options, 500);
		});
		
	
	$("#step1").hide();
	$("#step2").hide(); 
	$("#step3").hide(); 
	$("#step4").hide();  
}); //jQuery is loaded