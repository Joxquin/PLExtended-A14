package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public final t3.f f11486a = t3.c.d(new s(8, false));

    public final boolean a(Object element) {
        kotlin.jvm.internal.h.e(element, "element");
        t3.f fVar = this.f11486a;
        while (true) {
            s sVar = (s) fVar.f12366b;
            int a4 = sVar.a(element);
            if (a4 == 0) {
                return true;
            }
            if (a4 == 1) {
                this.f11486a.a(sVar, sVar.c());
            } else if (a4 == 2) {
                return false;
            }
        }
    }

    public final int b() {
        long j4 = ((s) this.f11486a.f12366b).f11493e.f12363b;
        return 1073741823 & (((int) ((j4 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j4) >> 0)));
    }

    public final Object c() {
        t3.f fVar = this.f11486a;
        while (true) {
            s sVar = (s) fVar.f12366b;
            Object d4 = sVar.d();
            if (d4 != s.f11488g) {
                return d4;
            }
            this.f11486a.a(sVar, sVar.c());
        }
    }
}
