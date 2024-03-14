package kotlinx.coroutines;
/* loaded from: classes.dex */
public abstract class O implements Runnable, Comparable, K, kotlinx.coroutines.internal.J {
    private volatile Object _heap;

    /* renamed from: d  reason: collision with root package name */
    public long f11315d;

    /* renamed from: e  reason: collision with root package name */
    public int f11316e;

    @Override // kotlinx.coroutines.internal.J
    public final void a(int i4) {
        this.f11316e = i4;
    }

    @Override // kotlinx.coroutines.K
    public final void c() {
        synchronized (this) {
            Object obj = this._heap;
            kotlinx.coroutines.internal.E e4 = S.f11321a;
            if (obj == e4) {
                return;
            }
            P p4 = obj instanceof P ? (P) obj : null;
            if (p4 != null) {
                synchronized (p4) {
                    Object obj2 = this._heap;
                    if ((obj2 instanceof kotlinx.coroutines.internal.I ? (kotlinx.coroutines.internal.I) obj2 : null) != null) {
                        p4.b(this.f11316e);
                    }
                }
            }
            this._heap = e4;
            e3.f fVar = e3.f.f9037a;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        O other = (O) obj;
        kotlin.jvm.internal.h.e(other, "other");
        int i4 = ((this.f11315d - other.f11315d) > 0L ? 1 : ((this.f11315d - other.f11315d) == 0L ? 0 : -1));
        if (i4 > 0) {
            return 1;
        }
        return i4 < 0 ? -1 : 0;
    }

    @Override // kotlinx.coroutines.internal.J
    public final void e(P p4) {
        if (!(this._heap != S.f11321a)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this._heap = p4;
    }

    public final int g(long j4, P p4, E e4) {
        synchronized (this) {
            if (this._heap == S.f11321a) {
                return 2;
            }
            synchronized (p4) {
                kotlinx.coroutines.internal.J[] jArr = p4.f11450a;
                O o4 = jArr != null ? jArr[0] : null;
                if (Q.H(e4)) {
                    return 1;
                }
                if (o4 == null) {
                    p4.f11317c = j4;
                } else {
                    long j5 = o4.f11315d;
                    if (j5 - j4 < 0) {
                        j4 = j5;
                    }
                    if (j4 - p4.f11317c > 0) {
                        p4.f11317c = j4;
                    }
                }
                long j6 = this.f11315d;
                long j7 = p4.f11317c;
                if (j6 - j7 < 0) {
                    this.f11315d = j7;
                }
                p4.a(this);
                return 0;
            }
        }
    }

    public final String toString() {
        long j4 = this.f11315d;
        return "Delayed[nanos=" + j4 + "]";
    }
}
