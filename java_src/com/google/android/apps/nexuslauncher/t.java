package com.google.android.apps.nexuslauncher;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes.dex */
public final class t extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ u f7611a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, Handler handler) {
        super(handler);
        this.f7611a = uVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        this.f7611a.d(0);
    }
}
