LDmicro0.1
CYCLE=10000
CRYSTAL=4000000
BAUD=2400

IO LIST
    Xgreen_btn at 0
    Xred_btn at 0
    Ygreen_led at 0
    Yred_led at 0
END

PROGRAM
RUNG
    CONTACTS Xgreen_btn 0
    COIL Ygreen_led 0 0 0
END
RUNG
    CONTACTS Xred_btn 0
    COIL Yred_led 0 0 0
END
