package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.ExtendedEditText;
/* loaded from: classes.dex */
public final /* synthetic */ class J implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6594d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6595e;

    public /* synthetic */ J(int i4, Object obj) {
        this.f6594d = i4;
        this.f6595e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6594d) {
            case 0:
                ((L) this.f6595e).a(3);
                return;
            case 1:
                ((P) this.f6595e).e();
                return;
            default:
                ((ExtendedEditText) this.f6595e).reset();
                return;
        }
    }
}
