package com.android.launcher3.model;

import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class c1 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((WorkspaceItemInfo) obj).getDeepShortcutId();
    }
}
