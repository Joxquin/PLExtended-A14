package com.android.quickstep.util;

import android.content.Intent;
import android.database.ContentObserver;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.util.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0562h implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5869a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AsyncClockEventDelegate f5870b;

    public /* synthetic */ C0562h(AsyncClockEventDelegate asyncClockEventDelegate, int i4) {
        this.f5869a = i4;
        this.f5870b = asyncClockEventDelegate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5869a) {
            case 0:
                AsyncClockEventDelegate.d(this.f5870b, (ContentObserver) obj);
                return;
            default:
                AsyncClockEventDelegate.c(this.f5870b, (Intent) obj);
                return;
        }
    }
}
