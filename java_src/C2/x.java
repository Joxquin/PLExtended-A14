package C2;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class x {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public float f240a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public float f241b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public float f242c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public float f243d;
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    public float f244e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public float f245f;

    /* renamed from: g  reason: collision with root package name */
    public final List f246g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    public final List f247h = new ArrayList();

    public x() {
        e(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f4, float f5, float f6, float f7, float f8, float f9) {
        t tVar = new t(f4, f5, f6, f7);
        tVar.f233f = f8;
        tVar.f234g = f9;
        ((ArrayList) this.f246g).add(tVar);
        r rVar = new r(tVar);
        float f10 = f8 + f9;
        boolean z4 = f9 < 0.0f;
        if (z4) {
            f8 = (f8 + 180.0f) % 360.0f;
        }
        float f11 = z4 ? (180.0f + f10) % 360.0f : f10;
        b(f8);
        ((ArrayList) this.f247h).add(rVar);
        this.f244e = f11;
        double d4 = f10;
        this.f242c = (((f6 - f4) / 2.0f) * ((float) Math.cos(Math.toRadians(d4)))) + ((f4 + f6) * 0.5f);
        this.f243d = (((f7 - f5) / 2.0f) * ((float) Math.sin(Math.toRadians(d4)))) + ((f5 + f7) * 0.5f);
    }

    public final void b(float f4) {
        float f5 = this.f244e;
        if (f5 == f4) {
            return;
        }
        float f6 = ((f4 - f5) + 360.0f) % 360.0f;
        if (f6 > 180.0f) {
            return;
        }
        float f7 = this.f242c;
        float f8 = this.f243d;
        t tVar = new t(f7, f8, f7, f8);
        tVar.f233f = this.f244e;
        tVar.f234g = f6;
        ((ArrayList) this.f247h).add(new r(tVar));
        this.f244e = f4;
    }

    public final void c(Matrix matrix, Path path) {
        List list = this.f246g;
        int size = ((ArrayList) list).size();
        for (int i4 = 0; i4 < size; i4++) {
            ((v) ((ArrayList) list).get(i4)).a(matrix, path);
        }
    }

    public final void d(float f4, float f5) {
        u uVar = new u();
        uVar.f235b = f4;
        uVar.f236c = f5;
        ((ArrayList) this.f246g).add(uVar);
        s sVar = new s(uVar, this.f242c, this.f243d);
        b(sVar.b() + 270.0f);
        ((ArrayList) this.f247h).add(sVar);
        this.f244e = sVar.b() + 270.0f;
        this.f242c = f4;
        this.f243d = f5;
    }

    public final void e(float f4, float f5, float f6) {
        this.f240a = 0.0f;
        this.f241b = f4;
        this.f242c = 0.0f;
        this.f243d = f4;
        this.f244e = f5;
        this.f245f = (f5 + f6) % 360.0f;
        ((ArrayList) this.f246g).clear();
        ((ArrayList) this.f247h).clear();
    }
}
