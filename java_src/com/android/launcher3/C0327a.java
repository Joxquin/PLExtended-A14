package com.android.launcher3;

import android.content.ComponentName;
import java.util.function.Function;
/* renamed from: com.android.launcher3.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0327a implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ComponentName.unflattenFromString((String) obj);
    }
}
