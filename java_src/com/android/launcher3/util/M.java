package com.android.launcher3.util;

import com.android.launcher3.Launcher;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class M implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Launcher f5277a;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f5277a.clearPendingExecutor((ViewOnDrawExecutor) obj);
    }
}
