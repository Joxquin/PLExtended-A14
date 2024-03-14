package androidx.lifecycle;

import androidx.fragment.app.C0228u;
/* renamed from: androidx.lifecycle.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0256w {

    /* renamed from: d  reason: collision with root package name */
    public final z f3624d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f3625e;

    /* renamed from: f  reason: collision with root package name */
    public int f3626f = -1;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ x f3627g;

    public AbstractC0256w(x xVar, C0228u c0228u) {
        this.f3627g = xVar;
        this.f3624d = c0228u;
    }

    public final void c(boolean z4) {
        if (z4 == this.f3625e) {
            return;
        }
        this.f3625e = z4;
        int i4 = z4 ? 1 : -1;
        x xVar = this.f3627g;
        int i5 = xVar.f3631c;
        xVar.f3631c = i4 + i5;
        if (!xVar.f3632d) {
            xVar.f3632d = true;
            while (true) {
                try {
                    int i6 = xVar.f3631c;
                    if (i5 == i6) {
                        break;
                    }
                    boolean z5 = i5 == 0 && i6 > 0;
                    boolean z6 = i5 > 0 && i6 == 0;
                    if (z5) {
                        xVar.e();
                    } else if (z6) {
                        xVar.f();
                    }
                    i5 = i6;
                } finally {
                    xVar.f3632d = false;
                }
            }
        }
        if (this.f3625e) {
            xVar.c(this);
        }
    }

    public void d() {
    }

    public abstract boolean e();
}
