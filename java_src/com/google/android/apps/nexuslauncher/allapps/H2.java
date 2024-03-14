package com.google.android.apps.nexuslauncher.allapps;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class H2 extends AppWidgetHostView {

    /* renamed from: d  reason: collision with root package name */
    public int f6578d;

    /* renamed from: e  reason: collision with root package name */
    public AppWidgetProviderInfo f6579e;

    /* renamed from: f  reason: collision with root package name */
    public RemoteViews f6580f;

    /* renamed from: g  reason: collision with root package name */
    public final List f6581g;

    public H2(Context context) {
        super(context);
        this.f6581g = new ArrayList();
    }

    @Override // android.appwidget.AppWidgetHostView
    public final void setAppWidget(int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        this.f6578d = i4;
        this.f6579e = appWidgetProviderInfo;
        Iterator it = ((ArrayList) this.f6581g).iterator();
        while (it.hasNext()) {
            ((AppWidgetHostView) it.next()).setAppWidget(this.f6578d, this.f6579e);
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    public final void updateAppWidget(RemoteViews remoteViews) {
        this.f6580f = remoteViews;
        Iterator it = ((ArrayList) this.f6581g).iterator();
        while (it.hasNext()) {
            ((AppWidgetHostView) it.next()).updateAppWidget(remoteViews);
        }
    }
}
