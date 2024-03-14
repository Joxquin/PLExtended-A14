package k2;

import android.view.View;
import androidx.core.view.A;
import androidx.core.view.J;
import com.google.android.material.appbar.AppBarLayout;
import java.util.WeakHashMap;
/* renamed from: k2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1208f implements M.r {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f11187a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f11188b;

    public C1208f(AppBarLayout appBarLayout, boolean z4) {
        this.f11187a = appBarLayout;
        this.f11188b = z4;
    }

    @Override // M.r
    public final boolean a(View view) {
        AppBarLayout appBarLayout = this.f11187a;
        appBarLayout.getClass();
        WeakHashMap weakHashMap = J.f3079a;
        appBarLayout.i(this.f11188b, A.c(appBarLayout), true);
        return true;
    }
}
