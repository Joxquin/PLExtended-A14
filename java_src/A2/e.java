package A2;

import D.m;
import android.graphics.Typeface;
/* loaded from: classes.dex */
public final class e extends m {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f84a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f85b;

    public e(g gVar, h hVar) {
        this.f85b = gVar;
        this.f84a = hVar;
    }

    @Override // D.m
    public final void c(int i4) {
        this.f85b.f102m = true;
        this.f84a.a(i4);
    }

    @Override // D.m
    public final void d(Typeface typeface) {
        g gVar = this.f85b;
        gVar.f103n = Typeface.create(typeface, gVar.f92c);
        gVar.f102m = true;
        this.f84a.b(gVar.f103n, false);
    }
}
