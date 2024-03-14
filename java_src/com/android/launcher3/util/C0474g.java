package com.android.launcher3.util;

import java.util.function.Function;
/* renamed from: com.android.launcher3.util.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0474g implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new LooperExecutor(Executors.createAndStartNewLooper(0, (String) obj));
    }
}
