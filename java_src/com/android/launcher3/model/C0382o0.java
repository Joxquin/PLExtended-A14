package com.android.launcher3.model;

import com.android.launcher3.model.data.ItemInfo;
import java.util.Comparator;
/* renamed from: com.android.launcher3.model.o0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0382o0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Integer.compare(((ItemInfo) obj).container, ((ItemInfo) obj2).container);
    }
}
