package A2;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
/* loaded from: classes.dex */
public final class f extends h {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f86a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TextPaint f87b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ h f88c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f89d;

    public f(g gVar, Context context, TextPaint textPaint, h hVar) {
        this.f89d = gVar;
        this.f86a = context;
        this.f87b = textPaint;
        this.f88c = hVar;
    }

    @Override // A2.h
    public final void a(int i4) {
        this.f88c.a(i4);
    }

    @Override // A2.h
    public final void b(Typeface typeface, boolean z4) {
        this.f89d.f(this.f86a, this.f87b, typeface);
        this.f88c.b(typeface, z4);
    }
}
