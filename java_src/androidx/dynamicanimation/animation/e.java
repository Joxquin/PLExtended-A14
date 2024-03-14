package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.view.Choreographer;
/* loaded from: classes.dex */
public final class e implements r {

    /* renamed from: a  reason: collision with root package name */
    public Object f3168a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f3169b;

    public e() {
        this.f3168a = Choreographer.getInstance();
        this.f3169b = Looper.myLooper();
    }

    public final boolean a() {
        return Thread.currentThread() == ((Looper) this.f3169b).getThread();
    }

    public e(g gVar) {
        this.f3169b = gVar;
    }
}
