package com.android.launcher3.views;
/* loaded from: classes.dex */
public final /* synthetic */ class v implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5374d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Snackbar f5375e;

    public /* synthetic */ v(Snackbar snackbar, int i4) {
        this.f5374d = i4;
        this.f5375e = snackbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5374d) {
            case 0:
                this.f5375e.close(true);
                return;
            default:
                Snackbar.b(this.f5375e);
                return;
        }
    }
}
