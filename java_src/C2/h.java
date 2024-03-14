package C2;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import u2.C1424a;
/* loaded from: classes.dex */
public final class h extends Drawable.ConstantState {

    /* renamed from: a  reason: collision with root package name */
    public n f137a;

    /* renamed from: b  reason: collision with root package name */
    public C1424a f138b;

    /* renamed from: c  reason: collision with root package name */
    public ColorStateList f139c;

    /* renamed from: d  reason: collision with root package name */
    public ColorStateList f140d;

    /* renamed from: e  reason: collision with root package name */
    public final ColorStateList f141e;

    /* renamed from: f  reason: collision with root package name */
    public ColorStateList f142f;

    /* renamed from: g  reason: collision with root package name */
    public PorterDuff.Mode f143g;

    /* renamed from: h  reason: collision with root package name */
    public Rect f144h;

    /* renamed from: i  reason: collision with root package name */
    public final float f145i;

    /* renamed from: j  reason: collision with root package name */
    public float f146j;

    /* renamed from: k  reason: collision with root package name */
    public float f147k;

    /* renamed from: l  reason: collision with root package name */
    public int f148l;

    /* renamed from: m  reason: collision with root package name */
    public float f149m;

    /* renamed from: n  reason: collision with root package name */
    public float f150n;

    /* renamed from: o  reason: collision with root package name */
    public final float f151o;

    /* renamed from: p  reason: collision with root package name */
    public final int f152p;

    /* renamed from: q  reason: collision with root package name */
    public int f153q;

    /* renamed from: r  reason: collision with root package name */
    public int f154r;

    /* renamed from: s  reason: collision with root package name */
    public int f155s;

    /* renamed from: t  reason: collision with root package name */
    public final boolean f156t;

    /* renamed from: u  reason: collision with root package name */
    public final Paint.Style f157u;

    public h(n nVar) {
        this.f139c = null;
        this.f140d = null;
        this.f141e = null;
        this.f142f = null;
        this.f143g = PorterDuff.Mode.SRC_IN;
        this.f144h = null;
        this.f145i = 1.0f;
        this.f146j = 1.0f;
        this.f148l = 255;
        this.f149m = 0.0f;
        this.f150n = 0.0f;
        this.f151o = 0.0f;
        this.f152p = 0;
        this.f153q = 0;
        this.f154r = 0;
        this.f155s = 0;
        this.f156t = false;
        this.f157u = Paint.Style.FILL_AND_STROKE;
        this.f137a = nVar;
        this.f138b = null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        i iVar = new i(this);
        iVar.f164h = true;
        return iVar;
    }

    public h(h hVar) {
        this.f139c = null;
        this.f140d = null;
        this.f141e = null;
        this.f142f = null;
        this.f143g = PorterDuff.Mode.SRC_IN;
        this.f144h = null;
        this.f145i = 1.0f;
        this.f146j = 1.0f;
        this.f148l = 255;
        this.f149m = 0.0f;
        this.f150n = 0.0f;
        this.f151o = 0.0f;
        this.f152p = 0;
        this.f153q = 0;
        this.f154r = 0;
        this.f155s = 0;
        this.f156t = false;
        this.f157u = Paint.Style.FILL_AND_STROKE;
        this.f137a = hVar.f137a;
        this.f138b = hVar.f138b;
        this.f147k = hVar.f147k;
        this.f139c = hVar.f139c;
        this.f140d = hVar.f140d;
        this.f143g = hVar.f143g;
        this.f142f = hVar.f142f;
        this.f148l = hVar.f148l;
        this.f145i = hVar.f145i;
        this.f154r = hVar.f154r;
        this.f152p = hVar.f152p;
        this.f156t = hVar.f156t;
        this.f146j = hVar.f146j;
        this.f149m = hVar.f149m;
        this.f150n = hVar.f150n;
        this.f151o = hVar.f151o;
        this.f153q = hVar.f153q;
        this.f155s = hVar.f155s;
        this.f141e = hVar.f141e;
        this.f157u = hVar.f157u;
        if (hVar.f144h != null) {
            this.f144h = new Rect(hVar.f144h);
        }
    }
}
