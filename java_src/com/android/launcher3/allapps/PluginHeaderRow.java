package com.android.launcher3.allapps;

import android.view.View;
import n1.InterfaceC1317a;
/* loaded from: classes.dex */
public final class PluginHeaderRow implements FloatingHeaderRow {
    private final InterfaceC1317a mPlugin;
    final View mView;

    public PluginHeaderRow(InterfaceC1317a interfaceC1317a, FloatingHeaderView floatingHeaderView) {
        this.mPlugin = interfaceC1317a;
        this.mView = interfaceC1317a.m();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final int getExpectedHeight() {
        return this.mPlugin.getExpectedHeight();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final View getFocusedChild() {
        return null;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final Class getTypeClass() {
        return PluginHeaderRow.class;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final boolean hasVisibleContent() {
        return true;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final void setVerticalScroll(int i4, boolean z4) {
        int i5 = z4 ? 4 : 0;
        View view = this.mView;
        view.setVisibility(i5);
        if (z4) {
            return;
        }
        view.setTranslationY(i4);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z4) {
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final boolean shouldDraw() {
        return true;
    }
}
