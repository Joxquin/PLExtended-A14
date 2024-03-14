package com.android.launcher3.allapps;

import D0.s;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.views.RecyclerViewFastScroller;
/* loaded from: classes.dex */
public class SearchRecyclerView extends AllAppsRecyclerView {
    private L.a mChildAttachedConsumer;

    public SearchRecyclerView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.FastScrollRecyclerView
    public final RecyclerViewFastScroller getScrollbar() {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onChildAttachedToWindow(View view) {
        L.a aVar = this.mChildAttachedConsumer;
        if (aVar != null) {
            aVar.accept(view);
        }
        super.onChildAttachedToWindow(view);
    }

    public final void setChildAttachedConsumer(s sVar) {
        this.mChildAttachedConsumer = sVar;
    }

    @Override // com.android.launcher3.allapps.AllAppsRecyclerView
    public final void updatePoolSize() {
        getRecycledViewPool().setMaxRecycledViews(2, this.mNumAppsPerRow);
    }

    public SearchRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchRecyclerView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public SearchRecyclerView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
    }
}
