package com.android.launcher3.qsb;

import T0.b;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.launcher3.Launcher;
import com.android.launcher3.qsb.QsbWidgetHostView;
import com.android.launcher3.widget.NavigableAppWidgetHostView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class QsbWidgetHostView extends NavigableAppWidgetHostView {
    @ViewDebug.ExportedProperty(category = "launcher")
    private int mPreviousOrientation;

    public QsbWidgetHostView(Context context) {
        super(context);
        setFocusable(true);
        setBackgroundResource(R.drawable.qsb_host_view_focus_bg);
    }

    @Override // android.appwidget.AppWidgetHostView
    public final View getDefaultView() {
        View defaultView = super.getDefaultView();
        defaultView.setOnClickListener(new View.OnClickListener() { // from class: T0.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Launcher.getLauncher(QsbWidgetHostView.this.getContext()).startSearch("", false, null, true);
            }
        });
        return defaultView;
    }

    @Override // android.appwidget.AppWidgetHostView
    public final View getErrorView() {
        return getDefaultView(this);
    }

    public final boolean isReinflateRequired(int i4) {
        return this.mPreviousOrientation != i4;
    }

    @Override // android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        try {
            super.onLayout(z4, i4, i5, i6, i7);
        } catch (RuntimeException unused) {
            post(new Runnable() { // from class: T0.c
                @Override // java.lang.Runnable
                public final void run() {
                    QsbWidgetHostView qsbWidgetHostView = QsbWidgetHostView.this;
                    qsbWidgetHostView.getClass();
                    qsbWidgetHostView.updateAppWidget(new RemoteViews(qsbWidgetHostView.getAppWidgetInfo().provider.getPackageName(), 0));
                }
            });
        }
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView, android.view.View
    public final void setPadding(int i4, int i5, int i6, int i7) {
        super.setPadding(0, 0, 0, 0);
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
    public final boolean shouldAllowDirectClick() {
        return true;
    }

    @Override // android.appwidget.AppWidgetHostView
    public final void updateAppWidget(RemoteViews remoteViews) {
        this.mPreviousOrientation = getResources().getConfiguration().orientation;
        super.updateAppWidget(remoteViews);
    }

    public static View getDefaultView(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.qsb_default_view, viewGroup, false);
        inflate.findViewById(R.id.btn_qsb_search).setOnClickListener(new b());
        return inflate;
    }
}
