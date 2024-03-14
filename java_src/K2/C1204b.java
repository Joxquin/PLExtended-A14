package k2;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: k2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1204b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C2.i f11176d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f11177e;

    public C1204b(AppBarLayout appBarLayout, C2.i iVar) {
        this.f11177e = appBarLayout;
        this.f11176d = iVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f11176d.k(floatValue);
        Drawable drawable = this.f11177e.f7699t;
        if (drawable instanceof C2.i) {
            ((C2.i) drawable).k(floatValue);
        }
        Iterator it = ((ArrayList) this.f11177e.f7697r).iterator();
        while (it.hasNext()) {
            int i4 = this.f11176d.f180x;
            ((InterfaceC1214l) it.next()).a();
        }
    }
}
