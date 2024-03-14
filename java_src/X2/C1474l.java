package x2;

import android.animation.ValueAnimator;
import java.util.ArrayList;
/* renamed from: x2.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1474l {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f12859a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public C1473k f12860b = null;

    /* renamed from: c  reason: collision with root package name */
    public ValueAnimator f12861c = null;

    /* renamed from: d  reason: collision with root package name */
    public final C1472j f12862d = new C1472j(this);

    public final void a(int[] iArr, ValueAnimator valueAnimator) {
        C1473k c1473k = new C1473k(iArr, valueAnimator);
        valueAnimator.addListener(this.f12862d);
        this.f12859a.add(c1473k);
    }
}
