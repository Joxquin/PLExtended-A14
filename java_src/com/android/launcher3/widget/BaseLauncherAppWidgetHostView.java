package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.RemoteViews;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Executors;
import com.android.launcher3.widget.BaseLauncherAppWidgetHostView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class BaseLauncherAppWidgetHostView extends NavigableAppWidgetHostView {
    private final ViewOutlineProvider mCornerRadiusEnforcementOutline;
    private final float mEnforcedCornerRadius;
    private final Rect mEnforcedRectangle;
    protected final LayoutInflater mInflater;

    public BaseLauncherAppWidgetHostView(Context context) {
        super(context);
        this.mEnforcedRectangle = new Rect();
        this.mCornerRadiusEnforcementOutline = new ViewOutlineProvider() { // from class: com.android.launcher3.widget.BaseLauncherAppWidgetHostView.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (BaseLauncherAppWidgetHostView.this.mEnforcedRectangle.isEmpty() || BaseLauncherAppWidgetHostView.this.mEnforcedCornerRadius <= 0.0f) {
                    outline.setEmpty();
                } else {
                    outline.setRoundRect(BaseLauncherAppWidgetHostView.this.mEnforcedRectangle, BaseLauncherAppWidgetHostView.this.mEnforcedCornerRadius);
                }
            }
        };
        setExecutor(Executors.THREAD_POOL_EXECUTOR);
        this.mInflater = LayoutInflater.from(context);
        this.mEnforcedCornerRadius = RoundedCornerEnforcement.computeEnforcedRadius(getContext());
    }

    public final float getEnforcedCornerRadius() {
        return this.mEnforcedCornerRadius;
    }

    @Override // android.appwidget.AppWidgetHostView
    public final View getErrorView() {
        return this.mInflater.inflate(R.layout.appwidget_error, (ViewGroup) this, false);
    }

    @Override // android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        try {
            super.onLayout(z4, i4, i5, i6, i7);
        } catch (RuntimeException unused) {
            post(new Runnable() { // from class: f1.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLauncherAppWidgetHostView baseLauncherAppWidgetHostView = BaseLauncherAppWidgetHostView.this;
                    baseLauncherAppWidgetHostView.getClass();
                    baseLauncherAppWidgetHostView.updateAppWidget(new RemoteViews(baseLauncherAppWidgetHostView.getAppWidgetInfo().provider.getPackageName(), 0));
                }
            });
        }
        if (this.mEnforcedCornerRadius > 0.0f) {
            if (Utilities.ATLEAST_S && FeatureFlags.ENABLE_ENFORCED_ROUNDED_CORNERS.get()) {
                View findBackground = RoundedCornerEnforcement.findBackground(this);
                if (findBackground != null) {
                    if (!(findBackground.getId() == 16908288 && findBackground.getClipToOutline())) {
                        Rect rect = this.mEnforcedRectangle;
                        rect.left = 0;
                        rect.right = findBackground.getWidth();
                        rect.top = 0;
                        rect.bottom = findBackground.getHeight();
                        while (findBackground != this) {
                            rect.offset(findBackground.getLeft(), findBackground.getTop());
                            findBackground = (View) findBackground.getParent();
                        }
                        setOutlineProvider(this.mCornerRadiusEnforcementOutline);
                        setClipToOutline(true);
                        invalidateOutline();
                        return;
                    }
                }
                setOutlineProvider(ViewOutlineProvider.BACKGROUND);
                setClipToOutline(false);
                return;
            }
        }
        setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        setClipToOutline(false);
    }
}
