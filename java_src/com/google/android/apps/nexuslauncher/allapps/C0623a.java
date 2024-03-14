package com.google.android.apps.nexuslauncher.allapps;

import android.text.TextUtils;
import androidx.recyclerview.widget.AbstractC0290q0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.search.AllAppsSearchUiDelegate;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0623a extends AbstractC0290q0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0635d f6985a;

    public C0623a(C0635d c0635d) {
        this.f6985a = c0635d;
    }

    @Override // androidx.recyclerview.widget.AbstractC0290q0
    public final void onScrolled(RecyclerView recyclerView, int i4, int i5) {
        ActivityAllAppsContainerView activityAllAppsContainerView;
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        C0635d c0635d = this.f6985a;
        activityAllAppsContainerView = ((AllAppsSearchUiDelegate) c0635d).mAppsView;
        ExtendedEditText editText = activityAllAppsContainerView.getSearchUiManager().getEditText();
        if (editText != null) {
            if (i5 > 0) {
                editText.saveFocusedStateAndUpdateToUnfocusedState();
                editText.hideKeyboard();
            }
            if (i5 >= 0 || computeVerticalScrollOffset != 0) {
                return;
            }
            if (c0635d.f7023b.f7283p.f7199v.f7220m || !TextUtils.isEmpty(editText.getText())) {
                editText.showKeyboard(true);
            }
            editText.restoreToFocusedState();
        }
    }
}
