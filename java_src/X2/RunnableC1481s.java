package x2;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
/* renamed from: x2.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1481s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f12884d;

    public RunnableC1481s(View view) {
        this.f12884d = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InputMethodManager) this.f12884d.getContext().getSystemService("input_method")).showSoftInput(this.f12884d, 1);
    }
}
