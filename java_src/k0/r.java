package k0;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final /* synthetic */ class r implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ WeakReference f11146d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Context f11147e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f11148f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ String f11149g;

    public /* synthetic */ r(WeakReference weakReference, Context context, int i4, String str) {
        this.f11146d = weakReference;
        this.f11147e = context;
        this.f11148f = i4;
        this.f11149g = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Context context = (Context) this.f11146d.get();
        if (context == null) {
            context = this.f11147e;
        }
        return s.e(this.f11148f, context, this.f11149g);
    }
}
