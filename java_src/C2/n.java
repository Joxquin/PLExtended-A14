package C2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import i2.C0980a;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final d f197a;

    /* renamed from: b  reason: collision with root package name */
    public final d f198b;

    /* renamed from: c  reason: collision with root package name */
    public final d f199c;

    /* renamed from: d  reason: collision with root package name */
    public final d f200d;

    /* renamed from: e  reason: collision with root package name */
    public final c f201e;

    /* renamed from: f  reason: collision with root package name */
    public final c f202f;

    /* renamed from: g  reason: collision with root package name */
    public final c f203g;

    /* renamed from: h  reason: collision with root package name */
    public final c f204h;

    /* renamed from: i  reason: collision with root package name */
    public final f f205i;

    /* renamed from: j  reason: collision with root package name */
    public final f f206j;

    /* renamed from: k  reason: collision with root package name */
    public final f f207k;

    /* renamed from: l  reason: collision with root package name */
    public final f f208l;

    public n(m mVar) {
        this.f197a = mVar.f185a;
        this.f198b = mVar.f186b;
        this.f199c = mVar.f187c;
        this.f200d = mVar.f188d;
        this.f201e = mVar.f189e;
        this.f202f = mVar.f190f;
        this.f203g = mVar.f191g;
        this.f204h = mVar.f192h;
        this.f205i = mVar.f193i;
        this.f206j = mVar.f194j;
        this.f207k = mVar.f195k;
        this.f208l = mVar.f196l;
    }

    public static m a(Context context, int i4, int i5, a aVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i4);
        if (i5 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i5);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(C0980a.f9649y);
        try {
            int i6 = obtainStyledAttributes.getInt(0, 0);
            int i7 = obtainStyledAttributes.getInt(3, i6);
            int i8 = obtainStyledAttributes.getInt(4, i6);
            int i9 = obtainStyledAttributes.getInt(2, i6);
            int i10 = obtainStyledAttributes.getInt(1, i6);
            c c4 = c(obtainStyledAttributes, 5, aVar);
            c c5 = c(obtainStyledAttributes, 8, c4);
            c c6 = c(obtainStyledAttributes, 9, c4);
            c c7 = c(obtainStyledAttributes, 7, c4);
            c c8 = c(obtainStyledAttributes, 6, c4);
            m mVar = new m();
            d a4 = j.a(i7);
            mVar.f185a = a4;
            float b4 = m.b(a4);
            if (b4 != -1.0f) {
                mVar.f189e = new a(b4);
            }
            mVar.f189e = c5;
            d a5 = j.a(i8);
            mVar.f186b = a5;
            float b5 = m.b(a5);
            if (b5 != -1.0f) {
                mVar.f190f = new a(b5);
            }
            mVar.f190f = c6;
            d a6 = j.a(i9);
            mVar.f187c = a6;
            float b6 = m.b(a6);
            if (b6 != -1.0f) {
                mVar.f191g = new a(b6);
            }
            mVar.f191g = c7;
            d a7 = j.a(i10);
            mVar.f188d = a7;
            float b7 = m.b(a7);
            if (b7 != -1.0f) {
                mVar.f192h = new a(b7);
            }
            mVar.f192h = c8;
            return mVar;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static m b(Context context, AttributeSet attributeSet, int i4, int i5) {
        a aVar = new a(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9643s, i4, i5);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, aVar);
    }

    public static c c(TypedArray typedArray, int i4, c cVar) {
        TypedValue peekValue = typedArray.peekValue(i4);
        if (peekValue == null) {
            return cVar;
        }
        int i5 = peekValue.type;
        return i5 == 5 ? new a(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : i5 == 6 ? new k(peekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public final boolean d(RectF rectF) {
        boolean z4 = this.f208l.getClass().equals(f.class) && this.f206j.getClass().equals(f.class) && this.f205i.getClass().equals(f.class) && this.f207k.getClass().equals(f.class);
        float a4 = this.f201e.a(rectF);
        return z4 && ((this.f202f.a(rectF) > a4 ? 1 : (this.f202f.a(rectF) == a4 ? 0 : -1)) == 0 && (this.f204h.a(rectF) > a4 ? 1 : (this.f204h.a(rectF) == a4 ? 0 : -1)) == 0 && (this.f203g.a(rectF) > a4 ? 1 : (this.f203g.a(rectF) == a4 ? 0 : -1)) == 0) && ((this.f198b instanceof l) && (this.f197a instanceof l) && (this.f199c instanceof l) && (this.f200d instanceof l));
    }

    public n() {
        this.f197a = new l();
        this.f198b = new l();
        this.f199c = new l();
        this.f200d = new l();
        this.f201e = new a(0.0f);
        this.f202f = new a(0.0f);
        this.f203g = new a(0.0f);
        this.f204h = new a(0.0f);
        this.f205i = new f();
        this.f206j = new f();
        this.f207k = new f();
        this.f208l = new f();
    }
}
