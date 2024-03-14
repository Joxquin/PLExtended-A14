package com.google.android.apps.nexuslauncher.allapps;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.v0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0707v0 extends AppWidgetHost {
    public C0707v0(Context context) {
        super(context, 2048);
    }

    @Override // android.appwidget.AppWidgetHost
    public final AppWidgetHostView onCreateView(Context context, int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        return new H2(context);
    }
}
