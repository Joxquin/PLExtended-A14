package com.android.launcher3;

import com.android.launcher3.DevicePaddings;
import java.util.Comparator;
/* renamed from: com.android.launcher3.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0408p implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i4;
        int i5;
        i4 = ((DevicePaddings.DevicePadding) obj).maxEmptySpacePx;
        i5 = ((DevicePaddings.DevicePadding) obj2).maxEmptySpacePx;
        return Integer.compare(i4, i5);
    }
}
