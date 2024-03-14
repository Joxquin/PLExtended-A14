package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Size;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.RoundDrawableWrapper;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.DatabaseWidgetPreviewLoader;
import com.android.launcher3.widget.WidgetCell;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class WidgetCell extends LinearLayout {
    protected HandlerRunnable mActiveRequest;
    protected final ActivityContext mActivity;
    private boolean mAnimatePreview;
    private NavigableAppWidgetHostView mAppWidgetHostViewPreview;
    private float mAppWidgetHostViewScale;
    private final float mEnforcedCornerRadius;
    private WidgetItem mItem;
    private final CheckLongPressHelper mLongPressHelper;
    private float mPreviewContainerScale;
    private RemoteViews mRemoteViewsPreview;
    private int mSourceContainer;
    private ImageView mWidgetBadge;
    private TextView mWidgetDescription;
    private TextView mWidgetDims;
    private WidgetImageView mWidgetImage;
    private FrameLayout mWidgetImageContainer;
    private TextView mWidgetName;
    private final DatabaseWidgetPreviewLoader mWidgetPreviewLoader;
    private Size mWidgetSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.widget.WidgetCell$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends NavigableAppWidgetHostView {
        @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
        public final boolean shouldAllowDirectClick() {
            return false;
        }
    }

    public WidgetCell(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyPreview(Bitmap bitmap) {
        if (bitmap != null) {
            this.mWidgetImage.setDrawable(new RoundDrawableWrapper(new FastBitmapDrawable(bitmap, 0), this.mEnforcedCornerRadius));
            this.mWidgetImage.setVisibility(0);
            NavigableAppWidgetHostView navigableAppWidgetHostView = this.mAppWidgetHostViewPreview;
            if (navigableAppWidgetHostView != null) {
                removeView(navigableAppWidgetHostView);
                this.mAppWidgetHostViewPreview = null;
            }
        }
        if (this.mAnimatePreview) {
            this.mWidgetImageContainer.setAlpha(0.0f);
            this.mWidgetImageContainer.animate().alpha(1.0f).setDuration(90L);
        } else {
            this.mWidgetImageContainer.setAlpha(1.0f);
        }
        HandlerRunnable handlerRunnable = this.mActiveRequest;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
            this.mActiveRequest = null;
        }
    }

    public static void b(WidgetCell widgetCell, NavigableAppWidgetHostView navigableAppWidgetHostView) {
        widgetCell.getClass();
        int width = navigableAppWidgetHostView.getWidth();
        int height = navigableAppWidgetHostView.getHeight();
        if (navigableAppWidgetHostView.getChildCount() == 1) {
            View childAt = navigableAppWidgetHostView.getChildAt(0);
            int i4 = width / 2;
            width = Math.max(i4 - childAt.getLeft(), childAt.getRight() - i4) * 2;
            int i5 = height / 2;
            height = Math.max(i5 - childAt.getTop(), childAt.getBottom() - i5) * 2;
        }
        if (width <= 0 || height <= 0) {
            widgetCell.mAppWidgetHostViewScale = 1.0f;
        } else {
            widgetCell.mAppWidgetHostViewScale = Math.min(widgetCell.mWidgetImageContainer.getWidth() / width, widgetCell.mWidgetImageContainer.getHeight() / height);
        }
        navigableAppWidgetHostView.setScaleToFit(widgetCell.mAppWidgetHostViewScale);
    }

    private void setAppWidgetHostViewPreview(final NavigableAppWidgetHostView navigableAppWidgetHostView, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, RemoteViews remoteViews) {
        navigableAppWidgetHostView.setImportantForAccessibility(2);
        navigableAppWidgetHostView.setAppWidget(-1, launcherAppWidgetProviderInfo);
        navigableAppWidgetHostView.updateAppWidget(remoteViews);
        navigableAppWidgetHostView.setClipToPadding(false);
        navigableAppWidgetHostView.setClipChildren(false);
        this.mWidgetImageContainer.addView(navigableAppWidgetHostView, 0, new FrameLayout.LayoutParams(this.mWidgetSize.getWidth(), this.mWidgetSize.getHeight(), 17));
        this.mWidgetImage.setVisibility(8);
        applyPreview(null);
        navigableAppWidgetHostView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: f1.h
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                WidgetCell.b(WidgetCell.this, navigableAppWidgetHostView);
            }
        });
    }

    public final void applyFromCellItem(WidgetItem widgetItem, float f4, Consumer consumer, Bitmap bitmap) {
        this.mPreviewContainerScale = f4;
        Context context = getContext();
        this.mItem = widgetItem;
        this.mWidgetSize = WidgetSizes.getWidgetItemSizePx(getContext(), this.mActivity.getDeviceProfile(), this.mItem);
        this.mWidgetName.setText(this.mItem.label);
        this.mWidgetName.setContentDescription(context.getString(R.string.widget_preview_context_description, this.mItem.label));
        this.mWidgetDims.setText(context.getString(R.string.widget_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        this.mWidgetDims.setContentDescription(context.getString(R.string.widget_accessible_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        boolean z4 = false;
        if (TextUtils.isEmpty(this.mItem.description)) {
            this.mWidgetDescription.setVisibility(8);
        } else {
            this.mWidgetDescription.setText(this.mItem.description);
            this.mWidgetDescription.setVisibility(0);
        }
        ShortcutConfigActivityInfo shortcutConfigActivityInfo = widgetItem.activityInfo;
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = widgetItem.widgetInfo;
        if (shortcutConfigActivityInfo != null) {
            setTag(new PendingAddShortcutInfo(widgetItem.activityInfo));
        } else {
            setTag(new PendingAddWidgetInfo(launcherAppWidgetProviderInfo, this.mSourceContainer));
        }
        if (this.mRemoteViewsPreview != null) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(context);
            this.mAppWidgetHostViewPreview = anonymousClass1;
            setAppWidgetHostViewPreview(anonymousClass1, launcherAppWidgetProviderInfo, this.mRemoteViewsPreview);
            return;
        }
        if (Utilities.ATLEAST_S && launcherAppWidgetProviderInfo != null && ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).previewLayout != 0) {
            z4 = true;
        }
        if (z4) {
            this.mAppWidgetHostViewPreview = ActivityContext.lookupContext(context) instanceof Launcher ? new LauncherAppWidgetHostView(context) : new AnonymousClass1(context);
            LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(context, launcherAppWidgetProviderInfo.clone());
            ((AppWidgetProviderInfo) fromProviderInfo).initialLayout = ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).previewLayout;
            setAppWidgetHostViewPreview(this.mAppWidgetHostViewPreview, fromProviderInfo, null);
        } else if (bitmap != null) {
            applyPreview(bitmap);
        } else if (this.mActiveRequest == null) {
            final DatabaseWidgetPreviewLoader databaseWidgetPreviewLoader = this.mWidgetPreviewLoader;
            final WidgetItem widgetItem2 = this.mItem;
            final Size size = this.mWidgetSize;
            databaseWidgetPreviewLoader.getClass();
            Handler handler = Executors.UI_HELPER_EXECUTOR.getHandler();
            HandlerRunnable handlerRunnable = new HandlerRunnable(handler, new Supplier() { // from class: f1.b
                @Override // java.util.function.Supplier
                public final Object get() {
                    return DatabaseWidgetPreviewLoader.b(DatabaseWidgetPreviewLoader.this, widgetItem2, size);
                }
            }, Executors.MAIN_EXECUTOR, consumer);
            Utilities.postAsyncCallback(handler, handlerRunnable);
            this.mActiveRequest = handlerRunnable;
        }
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public final void clear() {
        this.mWidgetImage.animate().cancel();
        this.mWidgetImage.setDrawable(null);
        this.mWidgetImage.setVisibility(0);
        this.mWidgetBadge.setImageDrawable(null);
        this.mWidgetBadge.setVisibility(8);
        this.mWidgetName.setText((CharSequence) null);
        this.mWidgetDims.setText((CharSequence) null);
        this.mWidgetDescription.setText((CharSequence) null);
        this.mWidgetDescription.setVisibility(8);
        HandlerRunnable handlerRunnable = this.mActiveRequest;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
            this.mActiveRequest = null;
        }
        this.mRemoteViewsPreview = null;
        NavigableAppWidgetHostView navigableAppWidgetHostView = this.mAppWidgetHostViewPreview;
        if (navigableAppWidgetHostView != null) {
            this.mWidgetImageContainer.removeView(navigableAppWidgetHostView);
        }
        this.mAppWidgetHostViewPreview = null;
        this.mAppWidgetHostViewScale = 1.0f;
        this.mPreviewContainerScale = 1.0f;
        this.mItem = null;
        this.mWidgetSize = new Size(0, 0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return WidgetCell.class.getName();
    }

    public final NavigableAppWidgetHostView getAppWidgetHostViewPreview() {
        return this.mAppWidgetHostViewPreview;
    }

    public final float getAppWidgetHostViewScale() {
        return this.mAppWidgetHostViewScale;
    }

    public final RemoteViews getRemoteViewsPreview() {
        return this.mRemoteViewsPreview;
    }

    public final WidgetImageView getWidgetView() {
        return this.mWidgetImage;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mWidgetImageContainer = (FrameLayout) findViewById(R.id.widget_preview_container);
        this.mWidgetImage = (WidgetImageView) findViewById(R.id.widget_preview);
        this.mWidgetBadge = (ImageView) findViewById(R.id.widget_badge);
        this.mWidgetName = (TextView) findViewById(R.id.widget_name);
        this.mWidgetDims = (TextView) findViewById(R.id.widget_dims);
        this.mWidgetDescription = (TextView) findViewById(R.id.widget_description);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        ViewGroup.LayoutParams layoutParams = this.mWidgetImageContainer.getLayoutParams();
        this.mAppWidgetHostViewScale = this.mPreviewContainerScale;
        int size = View.MeasureSpec.getSize(i4);
        int round = Math.round(this.mWidgetSize.getWidth() * this.mAppWidgetHostViewScale);
        layoutParams.width = round;
        if (round > size) {
            layoutParams.width = size;
            this.mAppWidgetHostViewScale = size / this.mWidgetSize.getWidth();
        }
        layoutParams.height = Math.round(this.mWidgetSize.getHeight() * this.mAppWidgetHostViewScale);
        super.onMeasure(i4, i5);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return true;
    }

    public final void setAnimatePreview() {
        this.mAnimatePreview = false;
    }

    public final void setRemoteViewsPreview(RemoteViews remoteViews) {
        this.mRemoteViewsPreview = remoteViews;
    }

    public final void setSourceContainer(int i4) {
        this.mSourceContainer = i4;
    }

    public final void showBadge() {
        if (Process.myUserHandle().equals(this.mItem.user)) {
            this.mWidgetBadge.setVisibility(8);
            return;
        }
        this.mWidgetBadge.setVisibility(0);
        this.mWidgetBadge.setImageResource(R.drawable.ic_work_app_badge);
    }

    public WidgetCell(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetCell(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mPreviewContainerScale = 1.0f;
        this.mAnimatePreview = true;
        this.mAppWidgetHostViewScale = 1.0f;
        this.mSourceContainer = -105;
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.mActivity = activityContext;
        this.mWidgetPreviewLoader = new DatabaseWidgetPreviewLoader(context);
        CheckLongPressHelper checkLongPressHelper = new CheckLongPressHelper(this, null);
        this.mLongPressHelper = checkLongPressHelper;
        checkLongPressHelper.setLongPressTimeoutFactor();
        this.mEnforcedCornerRadius = RoundedCornerEnforcement.computeEnforcedRadius(context);
        this.mWidgetSize = new Size(0, 0);
        setClipToPadding(false);
        setAccessibilityDelegate(activityContext.getAccessibilityDelegate());
    }
}
