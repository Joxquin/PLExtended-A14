package com.google.android.apps.nexuslauncher.allapps;

import android.appwidget.AppWidgetHostView;
import android.widget.RemoteViews;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.n2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0678n2 extends AppWidgetHostView {
    @Override // android.appwidget.AppWidgetHostView
    public final void updateAppWidget(RemoteViews remoteViews) {
        super.updateAppWidget(remoteViews);
        setVisibility(remoteViews == null ? 8 : 0);
    }
}
