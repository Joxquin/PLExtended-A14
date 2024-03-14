package com.android.launcher3.model;

import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.function.ToIntFunction;
/* renamed from: com.android.launcher3.model.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0402z implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int i4;
        i4 = ((WorkspaceItemInfo) obj).container;
        return i4;
    }
}
