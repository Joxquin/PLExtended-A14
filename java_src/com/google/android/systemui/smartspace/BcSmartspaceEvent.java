package com.google.android.systemui.smartspace;

import K2.G;
/* loaded from: classes.dex */
public enum BcSmartspaceEvent implements G {
    /* JADX INFO: Fake field, exist only in values array */
    IGNORE(-1),
    SMARTSPACE_CARD_RECEIVED(759),
    SMARTSPACE_CARD_CLICK(760),
    SMARTSPACE_CARD_DISMISS(761),
    SMARTSPACE_CARD_SEEN(800),
    ENABLED_SMARTSPACE(822),
    DISABLED_SMARTSPACE(823);
    
    private final int mId;

    BcSmartspaceEvent(int i4) {
        this.mId = i4;
    }

    public final int a() {
        return this.mId;
    }
}
