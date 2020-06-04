~Alt::IsDoubleClick() ? (RemapKeys := !RemapKeys) : ""

#If RemapKeys
	Up::Numpad0
	Delete::Numpad1
	End::Numpad2
	PgDn::Numpad3
	Insert::Numpad4
	Home::Numpad5
	PgUp::Numpad6
	PrintScreen::Numpad7
	ScrollLock::Numpad8
	Pause::Numpad9
#If

IsDoubleClick() {
	static doubleClickTime := DllCall("GetDoubleClickTime")
	KeyWait, % LTrim(A_ThisHotkey, "~")
	return (A_ThisHotKey = A_PriorHotKey) && (A_TimeSincePriorHotkey <= doubleClickTime)
}
