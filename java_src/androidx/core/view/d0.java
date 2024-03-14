package androidx.core.view;

import android.view.Window;
import android.view.WindowInsetsController;
/* loaded from: classes.dex */
public final class d0 extends e0 {

    /* renamed from: a  reason: collision with root package name */
    public final WindowInsetsController f3108a;

    /* renamed from: b  reason: collision with root package name */
    public final Window f3109b;

    public d0(Window window) {
        WindowInsetsController insetsController = window.getInsetsController();
        new q.m();
        this.f3108a = insetsController;
        this.f3109b = window;
    }
}
