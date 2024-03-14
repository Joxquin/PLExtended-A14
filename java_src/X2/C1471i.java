package x2;

import android.view.View;
import androidx.core.view.C0165b;
import com.google.android.material.internal.NavigationMenuItemView;
/* renamed from: x2.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1471i extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ NavigationMenuItemView f12855d;

    public C1471i(NavigationMenuItemView navigationMenuItemView) {
        this.f12855d = navigationMenuItemView;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        eVar.f1349a.setCheckable(this.f12855d.f7992z);
    }
}
