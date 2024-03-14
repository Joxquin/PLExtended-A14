package o2;

import C2.n;
import C2.y;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import com.google.android.material.button.MaterialButton;
/* renamed from: o2.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1330d {

    /* renamed from: a  reason: collision with root package name */
    public final MaterialButton f11850a;

    /* renamed from: b  reason: collision with root package name */
    public n f11851b;

    /* renamed from: c  reason: collision with root package name */
    public int f11852c;

    /* renamed from: d  reason: collision with root package name */
    public int f11853d;

    /* renamed from: e  reason: collision with root package name */
    public int f11854e;

    /* renamed from: f  reason: collision with root package name */
    public int f11855f;

    /* renamed from: g  reason: collision with root package name */
    public int f11856g;

    /* renamed from: h  reason: collision with root package name */
    public PorterDuff.Mode f11857h;

    /* renamed from: i  reason: collision with root package name */
    public ColorStateList f11858i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f11859j;

    /* renamed from: k  reason: collision with root package name */
    public ColorStateList f11860k;

    /* renamed from: l  reason: collision with root package name */
    public C2.i f11861l;

    /* renamed from: o  reason: collision with root package name */
    public boolean f11864o;

    /* renamed from: q  reason: collision with root package name */
    public LayerDrawable f11866q;

    /* renamed from: r  reason: collision with root package name */
    public int f11867r;

    /* renamed from: m  reason: collision with root package name */
    public boolean f11862m = false;

    /* renamed from: n  reason: collision with root package name */
    public boolean f11863n = false;

    /* renamed from: p  reason: collision with root package name */
    public boolean f11865p = true;

    public C1330d(MaterialButton materialButton, n nVar) {
        this.f11850a = materialButton;
        this.f11851b = nVar;
    }

    public final y a() {
        LayerDrawable layerDrawable = this.f11866q;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f11866q.getNumberOfLayers() > 2 ? (y) this.f11866q.getDrawable(2) : (y) this.f11866q.getDrawable(1);
    }

    public final C2.i b(boolean z4) {
        LayerDrawable layerDrawable = this.f11866q;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (C2.i) ((LayerDrawable) ((InsetDrawable) this.f11866q.getDrawable(0)).getDrawable()).getDrawable(!z4 ? 1 : 0);
    }

    public final void c(n nVar) {
        this.f11851b = nVar;
        if (b(false) != null) {
            b(false).b(nVar);
        }
        if (b(true) != null) {
            b(true).b(nVar);
        }
        if (a() != null) {
            a().b(nVar);
        }
    }
}
