package C2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import java.util.BitSet;
import java.util.Objects;
import u2.C1424a;
/* loaded from: classes.dex */
public class i extends Drawable implements y {

    /* renamed from: A  reason: collision with root package name */
    public static final String f158A = i.class.getSimpleName();

    /* renamed from: B  reason: collision with root package name */
    public static final Paint f159B;

    /* renamed from: d  reason: collision with root package name */
    public h f160d;

    /* renamed from: e  reason: collision with root package name */
    public final w[] f161e;

    /* renamed from: f  reason: collision with root package name */
    public final w[] f162f;

    /* renamed from: g  reason: collision with root package name */
    public final BitSet f163g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f164h;

    /* renamed from: i  reason: collision with root package name */
    public final Matrix f165i;

    /* renamed from: j  reason: collision with root package name */
    public final Path f166j;

    /* renamed from: k  reason: collision with root package name */
    public final Path f167k;

    /* renamed from: l  reason: collision with root package name */
    public final RectF f168l;

    /* renamed from: m  reason: collision with root package name */
    public final RectF f169m;

    /* renamed from: n  reason: collision with root package name */
    public final Region f170n;

    /* renamed from: o  reason: collision with root package name */
    public final Region f171o;

    /* renamed from: p  reason: collision with root package name */
    public n f172p;

    /* renamed from: q  reason: collision with root package name */
    public final Paint f173q;

    /* renamed from: r  reason: collision with root package name */
    public final Paint f174r;

    /* renamed from: s  reason: collision with root package name */
    public final B2.a f175s;

    /* renamed from: t  reason: collision with root package name */
    public final g f176t;

    /* renamed from: u  reason: collision with root package name */
    public final p f177u;

    /* renamed from: v  reason: collision with root package name */
    public PorterDuffColorFilter f178v;

    /* renamed from: w  reason: collision with root package name */
    public PorterDuffColorFilter f179w;

    /* renamed from: x  reason: collision with root package name */
    public int f180x;

    /* renamed from: y  reason: collision with root package name */
    public final RectF f181y;

    /* renamed from: z  reason: collision with root package name */
    public final boolean f182z;

    static {
        Paint paint = new Paint(1);
        f159B = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public i() {
        this(new n());
    }

    @Override // C2.y
    public final void b(n nVar) {
        this.f160d.f137a = nVar;
        invalidateSelf();
    }

    public final void c(RectF rectF, Path path) {
        p pVar = this.f177u;
        h hVar = this.f160d;
        pVar.a(hVar.f137a, hVar.f146j, rectF, this.f176t, path);
        if (this.f160d.f145i != 1.0f) {
            this.f165i.reset();
            Matrix matrix = this.f165i;
            float f4 = this.f160d.f145i;
            matrix.setScale(f4, f4, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f165i);
        }
        path.computeBounds(this.f181y, true);
    }

    public final PorterDuffColorFilter d(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z4) {
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            if (z4) {
                colorForState = e(colorForState);
            }
            this.f180x = colorForState;
            return new PorterDuffColorFilter(colorForState, mode);
        }
        if (z4) {
            int color = paint.getColor();
            int e4 = e(color);
            this.f180x = e4;
            if (e4 != color) {
                return new PorterDuffColorFilter(e4, PorterDuff.Mode.SRC_IN);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0225  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: C2.i.draw(android.graphics.Canvas):void");
    }

    public final int e(int i4) {
        h hVar = this.f160d;
        float f4 = hVar.f150n + hVar.f151o + hVar.f149m;
        C1424a c1424a = hVar.f138b;
        return c1424a != null ? c1424a.a(f4, i4) : i4;
    }

    public final void f(Canvas canvas) {
        if (this.f163g.cardinality() > 0) {
            Log.w(f158A, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f160d.f154r != 0) {
            canvas.drawPath(this.f166j, this.f175s.f115a);
        }
        for (int i4 = 0; i4 < 4; i4++) {
            w wVar = this.f161e[i4];
            B2.a aVar = this.f175s;
            int i5 = this.f160d.f153q;
            Matrix matrix = w.f238b;
            wVar.a(matrix, aVar, i5, canvas);
            this.f162f[i4].a(matrix, this.f175s, this.f160d.f153q, canvas);
        }
        if (this.f182z) {
            h hVar = this.f160d;
            int sin = (int) (Math.sin(Math.toRadians(hVar.f155s)) * hVar.f154r);
            h hVar2 = this.f160d;
            int cos = (int) (Math.cos(Math.toRadians(hVar2.f155s)) * hVar2.f154r);
            canvas.translate(-sin, -cos);
            canvas.drawPath(this.f166j, f159B);
            canvas.translate(sin, cos);
        }
    }

    public final void g(Canvas canvas, Paint paint, Path path, n nVar, RectF rectF) {
        if (!nVar.d(rectF)) {
            canvas.drawPath(path, paint);
            return;
        }
        float a4 = nVar.f202f.a(rectF) * this.f160d.f146j;
        canvas.drawRoundRect(rectF, a4, a4, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f160d.f148l;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f160d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        h hVar = this.f160d;
        if (hVar.f152p == 2) {
            return;
        }
        if (hVar.f137a.d(i())) {
            outline.setRoundRect(getBounds(), this.f160d.f137a.f201e.a(i()) * this.f160d.f146j);
            return;
        }
        c(i(), this.f166j);
        this.f166j.isConvex();
        try {
            outline.setConvexPath(this.f166j);
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f160d.f144h;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        this.f170n.set(getBounds());
        c(i(), this.f166j);
        this.f171o.setPath(this.f166j, this.f170n);
        this.f170n.op(this.f171o, Region.Op.DIFFERENCE);
        return this.f170n;
    }

    public void h(Canvas canvas) {
        Paint paint = this.f174r;
        Path path = this.f167k;
        n nVar = this.f172p;
        this.f169m.set(i());
        Paint.Style style = this.f160d.f157u;
        float strokeWidth = (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && (this.f174r.getStrokeWidth() > 0.0f ? 1 : (this.f174r.getStrokeWidth() == 0.0f ? 0 : -1)) > 0 ? this.f174r.getStrokeWidth() / 2.0f : 0.0f;
        this.f169m.inset(strokeWidth, strokeWidth);
        g(canvas, paint, path, nVar, this.f169m);
    }

    public final RectF i() {
        this.f168l.set(getBounds());
        return this.f168l;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f164h = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f160d.f142f) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f160d.f141e) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f160d.f140d) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f160d.f139c) != null && colorStateList4.isStateful())));
    }

    public final void j(Context context) {
        this.f160d.f138b = new C1424a(context);
        o();
    }

    public final void k(float f4) {
        h hVar = this.f160d;
        if (hVar.f150n != f4) {
            hVar.f150n = f4;
            o();
        }
    }

    public final void l(ColorStateList colorStateList) {
        h hVar = this.f160d;
        if (hVar.f139c != colorStateList) {
            hVar.f139c = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean m(int[] iArr) {
        boolean z4;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f160d.f139c == null || color2 == (colorForState2 = this.f160d.f139c.getColorForState(iArr, (color2 = this.f173q.getColor())))) {
            z4 = false;
        } else {
            this.f173q.setColor(colorForState2);
            z4 = true;
        }
        if (this.f160d.f140d == null || color == (colorForState = this.f160d.f140d.getColorForState(iArr, (color = this.f174r.getColor())))) {
            return z4;
        }
        this.f174r.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f160d = new h(this.f160d);
        return this;
    }

    public final boolean n() {
        PorterDuffColorFilter porterDuffColorFilter = this.f178v;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f179w;
        h hVar = this.f160d;
        this.f178v = d(hVar.f142f, hVar.f143g, this.f173q, true);
        h hVar2 = this.f160d;
        this.f179w = d(hVar2.f141e, hVar2.f143g, this.f174r, false);
        h hVar3 = this.f160d;
        if (hVar3.f156t) {
            this.f175s.a(hVar3.f142f.getColorForState(getState(), 0));
        }
        return (Objects.equals(porterDuffColorFilter, this.f178v) && Objects.equals(porterDuffColorFilter2, this.f179w)) ? false : true;
    }

    public final void o() {
        h hVar = this.f160d;
        float f4 = hVar.f150n + hVar.f151o;
        hVar.f153q = (int) Math.ceil(0.75f * f4);
        this.f160d.f154r = (int) Math.ceil(f4 * 0.25f);
        n();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f164h = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z4 = m(iArr) || n();
        if (z4) {
            invalidateSelf();
        }
        return z4;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        h hVar = this.f160d;
        if (hVar.f148l != i4) {
            hVar.f148l = i4;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f160d.getClass();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i4) {
        setTintList(ColorStateList.valueOf(i4));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f160d.f142f = colorStateList;
        n();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        h hVar = this.f160d;
        if (hVar.f143g != mode) {
            hVar.f143g = mode;
            n();
            super.invalidateSelf();
        }
    }

    public i(Context context, AttributeSet attributeSet, int i4, int i5) {
        this(n.b(context, attributeSet, i4, i5).a());
    }

    public i(n nVar) {
        this(new h(nVar));
    }

    public i(h hVar) {
        p pVar;
        this.f161e = new w[4];
        this.f162f = new w[4];
        this.f163g = new BitSet(8);
        this.f165i = new Matrix();
        this.f166j = new Path();
        this.f167k = new Path();
        this.f168l = new RectF();
        this.f169m = new RectF();
        this.f170n = new Region();
        this.f171o = new Region();
        Paint paint = new Paint(1);
        this.f173q = paint;
        Paint paint2 = new Paint(1);
        this.f174r = paint2;
        this.f175s = new B2.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            pVar = o.f209a;
        } else {
            pVar = new p();
        }
        this.f177u = pVar;
        this.f181y = new RectF();
        this.f182z = true;
        this.f160d = hVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        n();
        m(getState());
        this.f176t = new g(this);
    }
}
