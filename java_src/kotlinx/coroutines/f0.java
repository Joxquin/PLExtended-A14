package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class f0 implements V {

    /* renamed from: d  reason: collision with root package name */
    public final l0 f11388d;

    /* renamed from: f  reason: collision with root package name */
    public final t3.f f11390f;

    /* renamed from: e  reason: collision with root package name */
    public final t3.b f11389e = t3.c.a(false);

    /* renamed from: g  reason: collision with root package name */
    public final t3.f f11391g = t3.c.d(null);

    public f0(l0 l0Var, Throwable th) {
        this.f11388d = l0Var;
        this.f11390f = t3.c.d(th);
    }

    @Override // kotlinx.coroutines.V
    public final boolean a() {
        return d() == null;
    }

    @Override // kotlinx.coroutines.V
    public final l0 b() {
        return this.f11388d;
    }

    public final void c(Throwable exception) {
        kotlin.jvm.internal.h.e(exception, "exception");
        Throwable d4 = d();
        if (d4 == null) {
            this.f11390f.d(exception);
        } else if (exception == d4) {
        } else {
            Object obj = this.f11391g.f12366b;
            if (obj == null) {
                this.f11391g.d(exception);
            } else if (!(obj instanceof Throwable)) {
                if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(exception);
                    return;
                }
                throw new IllegalStateException(("State is " + obj).toString());
            } else if (exception == obj) {
            } else {
                ArrayList arrayList = new ArrayList(4);
                arrayList.add(obj);
                arrayList.add(exception);
                this.f11391g.d(arrayList);
            }
        }
    }

    public final Throwable d() {
        return (Throwable) this.f11390f.f12366b;
    }

    public final boolean e() {
        return d() != null;
    }

    public final List f(Throwable th) {
        ArrayList arrayList;
        Object obj = this.f11391g.f12366b;
        if (obj == null) {
            arrayList = new ArrayList(4);
        } else if (obj instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(obj);
            arrayList = arrayList2;
        } else if (!(obj instanceof ArrayList)) {
            throw new IllegalStateException(("State is " + obj).toString());
        } else {
            arrayList = (ArrayList) obj;
        }
        Throwable d4 = d();
        if (d4 != null) {
            arrayList.add(0, d4);
        }
        if (th != null && !kotlin.jvm.internal.h.a(th, d4)) {
            arrayList.add(th);
        }
        this.f11391g.d(i0.f11436e);
        return arrayList;
    }

    public final String toString() {
        boolean e4 = e();
        boolean z4 = this.f11389e.f12357b != 0;
        Throwable d4 = d();
        Object obj = this.f11391g.f12366b;
        l0 l0Var = this.f11388d;
        return "Finishing[cancelling=" + e4 + ", completing=" + z4 + ", rootCause=" + d4 + ", exceptions=" + obj + ", list=" + l0Var + "]";
    }
}
