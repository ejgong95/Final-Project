function logincheck() {
	if (document.frm.id.value.length == 0) {
		alert("아이디를 입력해주세요.");
		frm.id.focus();
		return false;
	}
	if (document.frm.password.value.length == 0) {
		alert("비밀번호를 입력해주세요.");
		frm.password.focus();
		return false;
	}
	return ture;
}

function memberjoincheck() {
	if (document.frm.name.value.length == 0) {
		alert("이름을 입력하세요.");
		frm.name.focus();
		return false;
	}
	if (document.frm.id.value.length == 0) {
		alert("id를 입력하세요.");
		frm.id.focus();
		return false;
	}
	if (document.frm.password.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		frm.password.focus();
		return false;
	}
	if (document.frm.email.value.length == 0) {
		alert("이메일을 입력하세요.");
		frm.email.focus();
		return false;
	}
	if (document.frm.phone.value.length == 0) {
		alert("전화번호를 입력하세요.");
		frm.phone.focus();
		return false;
	}
	if (document.frm.birth.value.length == 0) {
		alert("생년월일을 입력하세요.");
		frm.birth.focus();
		return false;
	}	
	return true;
}


