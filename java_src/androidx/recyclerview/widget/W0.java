package androidx.recyclerview.widget;
/* loaded from: classes.dex */
public final class W0 {

    /* renamed from: a  reason: collision with root package name */
    public final q.m f3915a = new q.m();

    /* renamed from: b  reason: collision with root package name */
    public final q.j f3916b = new q.j();

    public final void a(E0 e02, C0270g0 c0270g0) {
        q.m mVar = this.f3915a;
        U0 u02 = (U0) mVar.get(e02);
        if (u02 == null) {
            u02 = U0.a();
            mVar.put(e02, u02);
        }
        u02.f3908c = c0270g0;
        u02.f3906a |= 8;
    }

    public final C0270g0 b(E0 e02, int i4) {
        U0 u02;
        C0270g0 c0270g0;
        q.m mVar = this.f3915a;
        int e4 = mVar.e(e02);
        if (e4 >= 0 && (u02 = (U0) mVar.j(e4)) != null) {
            int i5 = u02.f3906a;
            if ((i5 & i4) != 0) {
                int i6 = i5 & (~i4);
                u02.f3906a = i6;
                if (i4 == 4) {
                    c0270g0 = u02.f3907b;
                } else if (i4 != 8) {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                } else {
                    c0270g0 = u02.f3908c;
                }
                if ((i6 & 12) == 0) {
                    mVar.h(e4);
                    u02.f3906a = 0;
                    u02.f3907b = null;
                    u02.f3908c = null;
                    U0.f3905d.b(u02);
                }
                return c0270g0;
            }
        }
        return null;
    }

    public final void c(E0 e02) {
        U0 u02 = (U0) this.f3915a.get(e02);
        if (u02 == null) {
            return;
        }
        u02.f3906a &= -2;
    }

    public final void d(E0 e02) {
        q.j jVar = this.f3916b;
        int g4 = jVar.g() - 1;
        while (true) {
            if (g4 < 0) {
                break;
            } else if (e02 == jVar.h(g4)) {
                Object[] objArr = jVar.f11956f;
                Object obj = objArr[g4];
                Object obj2 = q.k.f11958a;
                if (obj != obj2) {
                    objArr[g4] = obj2;
                    jVar.f11954d = true;
                }
            } else {
                g4--;
            }
        }
        U0 u02 = (U0) this.f3915a.remove(e02);
        if (u02 != null) {
            u02.f3906a = 0;
            u02.f3907b = null;
            u02.f3908c = null;
            U0.f3905d.b(u02);
        }
    }
}
