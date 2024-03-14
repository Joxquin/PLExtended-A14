package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.Advanceable;
import android.widget.RemoteViews;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.LocalColorExtractor;
import com.android.systemui.shared.R;
import f1.RunnableC0855e;
/* loaded from: classes.dex */
public class LauncherAppWidgetHostView extends BaseLauncherAppWidgetHostView implements BaseDragLayer.TouchCompleteListener, View.OnLongClickListener, LocalColorExtractor.Listener {
    private static final SparseBooleanArray sAutoAdvanceWidgetIds = new SparseBooleanArray();
    private RunnableC0855e mAutoAdvanceRunnable;
    private final LocalColorExtractor mColorExtractor;
    private long mDeferUpdatesUntilMillis;
    private SparseIntArray mDeferredColorChange;
    private boolean mHasDeferredColorChange;
    private boolean mIsAttachedToWindow;
    private boolean mIsAutoAdvanceRegistered;
    private boolean mIsInDragMode;
    private boolean mIsScrollable;
    private boolean mIsWidgetCachingDisabled;
    RemoteViews mLastRemoteViews;
    protected final Launcher mLauncher;
    private final CheckLongPressHelper mLongPressHelper;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mReinflateOnConfigChange;
    private final Rect mTempRect;
    private boolean mTrackingWidgetUpdate;

    public LauncherAppWidgetHostView(Context context) {
        super(context);
        this.mTempRect = new Rect();
        this.mDeferUpdatesUntilMillis = 0L;
        this.mHasDeferredColorChange = false;
        this.mDeferredColorChange = null;
        this.mIsInDragMode = false;
        this.mTrackingWidgetUpdate = false;
        this.mIsWidgetCachingDisabled = false;
        Launcher launcher = Launcher.getLauncher(context);
        this.mLauncher = launcher;
        this.mLongPressHelper = new CheckLongPressHelper(this, this);
        setAccessibilityDelegate(launcher.getAccessibilityDelegate());
        setBackgroundResource(R.drawable.widget_internal_focus_bg);
        if (Utilities.ATLEAST_Q && Themes.getAttrBoolean(R.attr.isWorkspaceDarkText, launcher)) {
            setOnLightBackground(true);
        }
        this.mColorExtractor = new LocalColorExtractor();
    }

    public static void c(LauncherAppWidgetHostView launcherAppWidgetHostView) {
        Advanceable advanceable = launcherAppWidgetHostView.getAdvanceable();
        if (advanceable != null) {
            advanceable.advance();
        }
        launcherAppWidgetHostView.scheduleNextAdvance();
    }

    private void checkIfAutoAdvance() {
        boolean z4;
        Advanceable advanceable = getAdvanceable();
        if (advanceable != null) {
            advanceable.fyiWillBeAdvancedByHostKThx();
            z4 = true;
        } else {
            z4 = false;
        }
        SparseBooleanArray sparseBooleanArray = sAutoAdvanceWidgetIds;
        if (z4 != (sparseBooleanArray.indexOfKey(getAppWidgetId()) >= 0)) {
            if (z4) {
                sparseBooleanArray.put(getAppWidgetId(), true);
            } else {
                sparseBooleanArray.delete(getAppWidgetId());
            }
            maybeRegisterAutoAdvance();
        }
    }

    private static boolean checkScrollableRecursively(ViewGroup viewGroup) {
        if (viewGroup instanceof AdapterView) {
            return true;
        }
        for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
            View childAt = viewGroup.getChildAt(i4);
            if ((childAt instanceof ViewGroup) && checkScrollableRecursively((ViewGroup) childAt)) {
                return true;
            }
        }
        return false;
    }

    private Advanceable getAdvanceable() {
        int i4;
        AppWidgetProviderInfo appWidgetInfo = getAppWidgetInfo();
        if (appWidgetInfo == null || (i4 = appWidgetInfo.autoAdvanceViewId) == -1 || !this.mIsAttachedToWindow) {
            return null;
        }
        View findViewById = findViewById(i4);
        if (findViewById instanceof Advanceable) {
            return (Advanceable) findViewById;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [f1.e] */
    private void maybeRegisterAutoAdvance() {
        Handler handler = getHandler();
        boolean z4 = getWindowVisibility() == 0 && handler != null && sAutoAdvanceWidgetIds.indexOfKey(getAppWidgetId()) >= 0;
        if (z4 != this.mIsAutoAdvanceRegistered) {
            this.mIsAutoAdvanceRegistered = z4;
            if (this.mAutoAdvanceRunnable == null) {
                this.mAutoAdvanceRunnable = new Runnable() { // from class: f1.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherAppWidgetHostView.c(LauncherAppWidgetHostView.this);
                    }
                };
            }
            handler.removeCallbacks(this.mAutoAdvanceRunnable);
            scheduleNextAdvance();
        }
    }

    private void scheduleNextAdvance() {
        if (this.mIsAutoAdvanceRegistered) {
            long uptimeMillis = SystemClock.uptimeMillis();
            long indexOfKey = (sAutoAdvanceWidgetIds.indexOfKey(getAppWidgetId()) * 250) + (20000 - (uptimeMillis % 20000)) + uptimeMillis;
            Handler handler = getHandler();
            if (handler != null) {
                handler.postAtTime(this.mAutoAdvanceRunnable, indexOfKey);
            }
        }
    }

    public final void beginDeferringUpdates() {
        this.mDeferUpdatesUntilMillis = SystemClock.uptimeMillis() + 1000;
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public final void endDeferringUpdates() {
        this.mDeferUpdatesUntilMillis = 0L;
        RemoteViews remoteViews = this.mLastRemoteViews;
        SparseIntArray sparseIntArray = this.mDeferredColorChange;
        boolean z4 = this.mHasDeferredColorChange;
        this.mDeferredColorChange = null;
        this.mHasDeferredColorChange = false;
        if (remoteViews != null) {
            updateAppWidget(remoteViews);
        }
        if (z4) {
            onColorsChanged(sparseIntArray);
        }
    }

    public final void endDrag() {
        this.mIsInDragMode = false;
        requestLayout();
    }

    @Override // android.appwidget.AppWidgetHostView
    public final AppWidgetProviderInfo getAppWidgetInfo() {
        AppWidgetProviderInfo appWidgetInfo = super.getAppWidgetInfo();
        if (appWidgetInfo == null || (appWidgetInfo instanceof LauncherAppWidgetProviderInfo)) {
            return appWidgetInfo;
        }
        throw new IllegalStateException("Launcher widget must have LauncherAppWidgetProviderInfo");
    }

    public final void handleDrag() {
        if (this.mIsInDragMode) {
            this.mColorExtractor.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
        checkIfAutoAdvance();
        this.mColorExtractor.getClass();
    }

    public final void onColorsChanged(final SparseIntArray sparseIntArray) {
        if (SystemClock.uptimeMillis() < this.mDeferUpdatesUntilMillis) {
            this.mDeferredColorChange = sparseIntArray;
            this.mHasDeferredColorChange = true;
            return;
        }
        this.mDeferredColorChange = null;
        this.mHasDeferredColorChange = false;
        post(new Runnable() { // from class: f1.d
            @Override // java.lang.Runnable
            public final void run() {
                LauncherAppWidgetHostView.this.setColorResources(sparseIntArray);
            }
        });
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mReinflateOnConfigChange) {
            if (this.mLauncher.getResources().getConfiguration().orientation == this.mLauncher.getOrientation()) {
                this.mReinflateOnConfigChange = false;
                reInflate();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
        checkIfAutoAdvance();
        this.mColorExtractor.getClass();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getClass().getName());
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            DragLayer dragLayer = this.mLauncher.getDragLayer();
            if (this.mIsScrollable) {
                dragLayer.requestDisallowInterceptTouchEvent(true);
            }
            dragLayer.setTouchCompleteListener(this);
        }
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return this.mLongPressHelper.hasPerformedLongPress();
    }

    @Override // com.android.launcher3.widget.BaseLauncherAppWidgetHostView, android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        this.mIsScrollable = checkScrollableRecursively(this);
        if (this.mIsInDragMode || !(getTag() instanceof LauncherAppWidgetInfo)) {
            return;
        }
        this.mTempRect.set(i4, i5, i6, i7);
        LocalColorExtractor localColorExtractor = this.mColorExtractor;
        View view = (View) getParent();
        int i8 = ((LauncherAppWidgetInfo) getTag()).screenId;
        localColorExtractor.getClass();
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (this.mIsScrollable) {
            this.mLauncher.getDragLayer().requestDisallowInterceptTouchEvent(false);
        }
        view.performLongClick();
        return true;
    }

    public final void onTouchComplete() {
        if (this.mLongPressHelper.hasPerformedLongPress()) {
            return;
        }
        this.mLongPressHelper.cancelLongPress();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        maybeRegisterAutoAdvance();
    }

    public final void reInflate() {
        LauncherAppWidgetInfo launcherAppWidgetInfo;
        if (isAttachedToWindow() && (launcherAppWidgetInfo = (LauncherAppWidgetInfo) getTag()) != null) {
            this.mLauncher.removeItem(this, launcherAppWidgetInfo, false, "widget removed because of configuration change");
            this.mLauncher.bindAppWidget(launcherAppWidgetInfo);
        }
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView, android.appwidget.AppWidgetHostView
    public final void setAppWidget(int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        super.setAppWidget(i4, appWidgetProviderInfo);
        if (this.mTrackingWidgetUpdate || !Utilities.ATLEAST_Q) {
            return;
        }
        this.mTrackingWidgetUpdate = true;
        Trace.beginAsyncSection("appwidget load-widget " + appWidgetProviderInfo.provider, i4);
        Log.i("LauncherAppWidgetHostView", "App widget created with id: " + i4);
    }

    @Override // android.appwidget.AppWidgetHostView
    public final void setColorResources(SparseIntArray sparseIntArray) {
        if (sparseIntArray == null) {
            resetColorResources();
        } else {
            super.setColorResources(sparseIntArray);
        }
    }

    public final void setIsWidgetCachingDisabled() {
        this.mIsWidgetCachingDisabled = true;
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
    public final boolean shouldAllowDirectClick() {
        if (getTag() instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) getTag();
            return itemInfo.spanX == 1 && itemInfo.spanY == 1;
        }
        return false;
    }

    public final void startDrag() {
        this.mIsInDragMode = true;
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        if (this.mTrackingWidgetUpdate && remoteViews != null && Utilities.ATLEAST_Q) {
            Log.i("LauncherAppWidgetHostView", "App widget with id: " + getAppWidgetId() + " loaded");
            StringBuilder sb = new StringBuilder("appwidget load-widget ");
            sb.append(getAppWidgetInfo().provider);
            Trace.endAsyncSection(sb.toString(), getAppWidgetId());
            this.mTrackingWidgetUpdate = false;
        }
        if (!FeatureFlags.ENABLE_CACHED_WIDGET.get() || this.mIsWidgetCachingDisabled) {
            if (SystemClock.uptimeMillis() < this.mDeferUpdatesUntilMillis) {
                this.mLastRemoteViews = remoteViews;
                return;
            }
            this.mLastRemoteViews = null;
        } else {
            this.mLastRemoteViews = remoteViews;
            if (SystemClock.uptimeMillis() < this.mDeferUpdatesUntilMillis) {
                return;
            }
        }
        super.updateAppWidget(remoteViews);
        checkIfAutoAdvance();
        this.mReinflateOnConfigChange = !(this.mLauncher.getResources().getConfiguration().orientation == this.mLauncher.getOrientation());
    }
}
