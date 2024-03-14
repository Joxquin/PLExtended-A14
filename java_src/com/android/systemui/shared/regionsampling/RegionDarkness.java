package com.android.systemui.shared.regionsampling;
/* loaded from: classes.dex */
public enum RegionDarkness {
    DEFAULT(false),
    DARK(true),
    LIGHT(false);
    
    private final boolean isDark;

    RegionDarkness(boolean z4) {
        this.isDark = z4;
    }

    public final boolean isDark() {
        return this.isDark;
    }
}
