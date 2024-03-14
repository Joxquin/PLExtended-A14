package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class W extends U {

    /* renamed from: d  reason: collision with root package name */
    public final Activity f3355d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f3356e;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f3357f;

    /* renamed from: g  reason: collision with root package name */
    public final C0222q0 f3358g;

    public W(P p4) {
        Handler handler = new Handler();
        this.f3358g = new C0222q0();
        this.f3355d = p4;
        L.f.b(p4, "context == null");
        this.f3356e = p4;
        this.f3357f = handler;
    }

    public abstract void d(PrintWriter printWriter, String[] strArr);

    public abstract P e();

    public abstract LayoutInflater f();

    public abstract boolean g(String str);

    public abstract void h();
}
