package x2;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
/* renamed from: x2.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1475m {

    /* renamed from: a  reason: collision with root package name */
    public CharSequence f12863a;

    /* renamed from: b  reason: collision with root package name */
    public final TextPaint f12864b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12865c;

    /* renamed from: d  reason: collision with root package name */
    public int f12866d;

    /* renamed from: k  reason: collision with root package name */
    public boolean f12873k;

    /* renamed from: e  reason: collision with root package name */
    public Layout.Alignment f12867e = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: f  reason: collision with root package name */
    public int f12868f = Integer.MAX_VALUE;

    /* renamed from: g  reason: collision with root package name */
    public float f12869g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    public float f12870h = 1.0f;

    /* renamed from: i  reason: collision with root package name */
    public int f12871i = 1;

    /* renamed from: j  reason: collision with root package name */
    public boolean f12872j = true;

    /* renamed from: l  reason: collision with root package name */
    public TextUtils.TruncateAt f12874l = null;

    public C1475m(CharSequence charSequence, TextPaint textPaint, int i4) {
        this.f12863a = charSequence;
        this.f12864b = textPaint;
        this.f12865c = i4;
        this.f12866d = charSequence.length();
    }

    public final StaticLayout a() {
        if (this.f12863a == null) {
            this.f12863a = "";
        }
        int max = Math.max(0, this.f12865c);
        CharSequence charSequence = this.f12863a;
        int i4 = this.f12868f;
        TextPaint textPaint = this.f12864b;
        if (i4 == 1) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, max, this.f12874l);
        }
        int min = Math.min(charSequence.length(), this.f12866d);
        this.f12866d = min;
        if (this.f12873k && this.f12868f == 1) {
            this.f12867e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
        obtain.setAlignment(this.f12867e);
        obtain.setIncludePad(this.f12872j);
        obtain.setTextDirection(this.f12873k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f12874l;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f12868f);
        float f4 = this.f12869g;
        if (f4 != 0.0f || this.f12870h != 1.0f) {
            obtain.setLineSpacing(f4, this.f12870h);
        }
        if (this.f12868f > 1) {
            obtain.setHyphenationFrequency(this.f12871i);
        }
        return obtain.build();
    }
}
