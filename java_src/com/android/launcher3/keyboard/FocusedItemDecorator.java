package com.android.launcher3.keyboard;

import android.graphics.Canvas;
import androidx.recyclerview.widget.A0;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.keyboard.FocusIndicatorHelper;
/* loaded from: classes.dex */
public final class FocusedItemDecorator extends AbstractC0274i0 {
    private FocusIndicatorHelper.SimpleFocusIndicatorHelper mHelper;

    public FocusedItemDecorator(AllAppsRecyclerView allAppsRecyclerView) {
        this.mHelper = new FocusIndicatorHelper.SimpleFocusIndicatorHelper(allAppsRecyclerView);
    }

    public final FocusIndicatorHelper.SimpleFocusIndicatorHelper getFocusListener() {
        return this.mHelper;
    }

    @Override // androidx.recyclerview.widget.AbstractC0274i0
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, A0 a02) {
        this.mHelper.draw(canvas);
    }
}
