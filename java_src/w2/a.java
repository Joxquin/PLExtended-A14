package W2;

import t1.C1403b;
/* loaded from: classes.dex */
public final class a implements d3.a {

    /* renamed from: c  reason: collision with root package name */
    public static final Object f1931c = new Object();

    /* renamed from: a  reason: collision with root package name */
    public volatile d3.a f1932a;

    /* renamed from: b  reason: collision with root package name */
    public volatile Object f1933b = f1931c;

    public a(C1403b c1403b) {
        this.f1932a = c1403b;
    }

    @Override // d3.a
    public final Object get() {
        Object obj = this.f1933b;
        Object obj2 = f1931c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f1933b;
                if (obj == obj2) {
                    obj = this.f1932a.get();
                    Object obj3 = this.f1933b;
                    if ((obj3 != obj2) && obj3 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f1933b = obj;
                    this.f1932a = null;
                }
            }
        }
        return obj;
    }
}
