package k2;

import android.view.View;
import android.widget.ScrollView;
import androidx.core.view.C0165b;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: k2.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1206d extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f11181d;

    public C1206d(AppBarLayout.BaseBehavior baseBehavior) {
        this.f11181d = baseBehavior;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        eVar.f1349a.setScrollable(this.f11181d.f7706o);
        eVar.h(ScrollView.class.getName());
    }
}
