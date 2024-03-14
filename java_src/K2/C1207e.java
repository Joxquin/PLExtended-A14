package k2;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: k2.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1207e implements M.r {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f11182a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f11183b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f11184c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f11185d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f11186e;

    public C1207e(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i4) {
        this.f11186e = baseBehavior;
        this.f11182a = coordinatorLayout;
        this.f11183b = appBarLayout;
        this.f11184c = view;
        this.f11185d = i4;
    }

    @Override // M.r
    public final boolean a(View view) {
        this.f11186e.D(this.f11182a, this.f11183b, this.f11184c, this.f11185d, new int[]{0, 0});
        return true;
    }
}
