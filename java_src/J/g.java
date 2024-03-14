package J;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class g implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f587d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f588e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Context f589f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ f f590g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ int f591h;

    public /* synthetic */ g(String str, Context context, f fVar, int i4, int i5) {
        this.f587d = i5;
        this.f588e = str;
        this.f589f = context;
        this.f590g = fVar;
        this.f591h = i4;
    }

    public final i a() {
        int i4 = this.f587d;
        Context context = this.f589f;
        String str = this.f588e;
        int i5 = this.f591h;
        f fVar = this.f590g;
        switch (i4) {
            case 0:
                return j.a(str, context, fVar, i5);
            default:
                try {
                    return j.a(str, context, fVar, i5);
                } catch (Throwable unused) {
                    return new i(-3);
                }
        }
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        switch (this.f587d) {
            case 0:
                return a();
            default:
                return a();
        }
    }
}
