package androidx.activity;

import android.text.TextUtils;
/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f2426d;

    public f(l lVar) {
        this.f2426d = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            super/*android.app.Activity*/.onBackPressed();
        } catch (IllegalStateException e4) {
            if (!TextUtils.equals(e4.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e4;
            }
        }
    }
}
