package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public class SearchResultIconContainer extends C0720y1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultIconContainer(Context context) {
        super(context);
        kotlin.jvm.internal.h.e(context, "context");
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1
    public final void r(C0653h1 c0653h1, SearchTarget searchTarget, View view) {
        SearchResultIcon searchResultIcon = (SearchResultIcon) view;
        int i4 = this.f7294d.f7288u != 5 ? 4 : 5;
        ViewGroup.LayoutParams layoutParams = searchResultIcon.getLayoutParams();
        kotlin.jvm.internal.h.c(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((androidx.constraintlayout.widget.d) layoutParams).f2810R = 1.0f / i4;
        searchResultIcon.setCompoundDrawablePadding(((ActivityContext) this.f7294d.f7271d).getDeviceProfile().allAppsIconDrawablePaddingPx);
        searchResultIcon.e(C0653h1.a(searchTarget));
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1
    public final void t(View view) {
        ((SearchResultIcon) view).reset();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultIconContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        kotlin.jvm.internal.h.e(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultIconContainer(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        kotlin.jvm.internal.h.e(context, "context");
    }
}
