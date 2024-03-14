package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public class SearchSectionHeaderView extends com.android.systemui.animation.view.b implements A2 {
    public SearchSectionHeaderView(Context context) {
        super(context);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        setText(c0653h1.f7080a.getSearchAction().getTitle());
        setVisibility(0);
    }

    public SearchSectionHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SearchSectionHeaderView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
