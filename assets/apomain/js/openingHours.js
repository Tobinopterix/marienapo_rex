

function setOpeningHours() {
	var openingHoursArr = [
		['Geschlossen'],
		['08:00 –12:30', '13:30 – 18:30'],
		['08:00 –12:30', '13:30 – 18:30'],
		['08:00 –12:30'],
		['08:00 –12:30', '13:30 – 18:30'],
		['08:00 –12:30', '13:30 – 18:30'],
		['08:00 –12:00'],
	]

	var currentDate = new Date();
	var currentDay = currentDate.getDay();
	var currentDayOpeningHours = openingHoursArr[currentDay];

	var innerHtml = '';
	if (currentDayOpeningHours.length == 1) {
		//var replacement = document.createElement("div");
		//replacement.innerHTML = currentDayOpeningHours;
		innerHtml += '<div>'+currentDayOpeningHours[0]+'</div>';
	} else {
		innerHtml += '<div>'+currentDayOpeningHours[0]+'</div>';
		innerHtml += '<div>'+currentDayOpeningHours[1]+'</div>';
	}

	var openingHoursAnchor = document.getElementById("openingHours");

	//openingHoursAnchor.parentNode.replaceChild(replacement, openingHoursAnchor);
	openingHoursAnchor.innerHTML = innerHtml;//(replacement, openingHoursAnchor);


}