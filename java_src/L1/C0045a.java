package L1;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;
/* renamed from: L1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0045a extends ReplacementSpan {

    /* renamed from: a  reason: collision with root package name */
    public final RectF f1133a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1134b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1135c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1136d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f1137e;

    public C0045a(RectF rectF, int i4, boolean z4, int i5, int i6) {
        this.f1133a = rectF;
        this.f1134b = i4;
        this.f1137e = z4;
        this.f1135c = i5;
        this.f1136d = i6;
    }

    public static C0045a a(RectF rectF, int i4, boolean z4, int i5, int i6) {
        return new C0045a(rectF, i4, z4, i5, i6);
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i4, int i5, float f4, int i6, int i7, int i8, Paint paint) {
        if (r.f1239a) {
            paint.setColor(Color.argb(50, 100, 100, this.f1134b * 10));
            int i9 = (int) f4;
            canvas.drawRect(i9, i6, i9 + ((int) this.f1133a.width()), i8, paint);
        }
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            int i6 = (int) (-this.f1133a.height());
            fontMetricsInt.ascent = i6;
            fontMetricsInt.top = i6;
            fontMetricsInt.leading = 0;
            fontMetricsInt.descent = 0;
            fontMetricsInt.bottom = 0;
        }
        return (int) this.f1133a.width();
    }
}
