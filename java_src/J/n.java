package J;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes.dex */
public final class n implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final String f608a = "fonts-androidx";

    /* renamed from: b  reason: collision with root package name */
    public final int f609b = 10;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new m(runnable, this.f608a, this.f609b);
    }
}
