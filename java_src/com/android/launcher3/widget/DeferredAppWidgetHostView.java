package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.widget.RemoteViews;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class DeferredAppWidgetHostView extends LauncherAppWidgetHostView {
    private final TextPaint mPaint;
    private Layout mSetupTextLayout;

    public DeferredAppWidgetHostView(Context context) {
        super(context);
        setWillNotDraw(false);
        TextPaint textPaint = new TextPaint();
        this.mPaint = textPaint;
        textPaint.setColor(-1);
        textPaint.setTextSize(TypedValue.applyDimension(0, this.mLauncher.getDeviceProfile().iconTextSizePx, getResources().getDisplayMetrics()));
        setBackgroundResource(R.drawable.bg_deferred_app_widget);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mSetupTextLayout != null) {
            canvas.translate((getWidth() - this.mSetupTextLayout.getWidth()) / 2, (getHeight() - this.mSetupTextLayout.getHeight()) / 2);
            this.mSetupTextLayout.draw(canvas);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        AppWidgetProviderInfo appWidgetInfo = getAppWidgetInfo();
        if (appWidgetInfo == null || TextUtils.isEmpty(appWidgetInfo.label)) {
            return;
        }
        int measuredWidth = getMeasuredWidth() - ((getPaddingRight() + getPaddingLeft()) * 2);
        if (measuredWidth <= 0) {
            measuredWidth = getMeasuredWidth() - (getPaddingRight() + getPaddingLeft());
        }
        int i6 = measuredWidth;
        Layout layout = this.mSetupTextLayout;
        if (layout != null && layout.getText().equals(appWidgetInfo.label) && this.mSetupTextLayout.getWidth() == i6) {
            return;
        }
        this.mSetupTextLayout = new StaticLayout(appWidgetInfo.label, this.mPaint, i6, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
    }

    @Override // com.android.launcher3.widget.LauncherAppWidgetHostView, android.appwidget.AppWidgetHostView
    public final void updateAppWidget(RemoteViews remoteViews) {
    }
}
