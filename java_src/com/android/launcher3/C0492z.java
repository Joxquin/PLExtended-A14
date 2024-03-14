package com.android.launcher3;

import java.util.function.ToIntFunction;
/* renamed from: com.android.launcher3.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0492z implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((DeviceProfile) obj).numShownHotseatIcons;
    }
}
