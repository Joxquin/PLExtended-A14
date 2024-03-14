package Y1;

import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final /* synthetic */ class v implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2305d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ y f2306e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f2307f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f2308g;

    public /* synthetic */ v(y yVar, int i4, int i5, int i6) {
        this.f2305d = i6;
        this.f2306e = yVar;
        this.f2307f = i4;
        this.f2308g = i5;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i4 = this.f2305d;
        y yVar = this.f2306e;
        int i5 = this.f2308g;
        int i6 = this.f2307f;
        switch (i4) {
            case 0:
                return y.b(yVar, i6, i5);
            case 1:
                return y.e(yVar, i6, i5);
            default:
                return y.d(yVar, i6, i5);
        }
    }
}
