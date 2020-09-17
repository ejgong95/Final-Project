function blogCheck() {
	if (document.frm.title.value.length == 0) {
		alert("제목을 입력하세요.");
		frm.title.focus();
		return false;
	}
	if (document.frm.content.value.length == 0) {
		alert("내용을 입력하세요.");
		frm.cotent.focus();
		return false;
	}
	return true;
}

function blogDelete() {
	alert("정말로 삭제하시겠습니까?");
	return true;
}