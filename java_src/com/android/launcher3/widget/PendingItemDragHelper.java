package com.android.launcher3.widget;

import J0.i;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Size;
import android.view.View;
import android.widget.RemoteViews;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.RoundDrawableWrapper;
import com.android.launcher3.widget.dragndrop.AppWidgetHostViewDragListener;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public final class PendingItemDragHelper extends DragPreviewProvider {
    private final PendingAddItemInfo mAddInfo;
    private NavigableAppWidgetHostView mAppWidgetHostViewPreview;
    private final float mEnforcedRoundedCornersForWidget;
    private int[] mEstimatedCellSize;
    private RemoteViews mRemoteViewsPreview;
    private float mRemoteViewsPreviewScale;

    public PendingItemDragHelper(View view) {
        super(view);
        this.mRemoteViewsPreviewScale = 1.0f;
        this.mAddInfo = (PendingAddItemInfo) view.getTag();
        this.mEnforcedRoundedCornersForWidget = RoundedCornerEnforcement.computeEnforcedRadius(view.getContext());
    }

    public final void setAppWidgetHostViewPreview(NavigableAppWidgetHostView navigableAppWidgetHostView) {
        this.mAppWidgetHostViewPreview = navigableAppWidgetHostView;
    }

    public final void setRemoteViewsPreview(RemoteViews remoteViews, float f4) {
        this.mRemoteViewsPreview = remoteViews;
        this.mRemoteViewsPreviewScale = f4;
    }

    public final void startDrag(Rect rect, int i4, int i5, Point point, DragSource dragSource, DragOptions dragOptions) {
        Drawable fastBitmapDrawable;
        int intrinsicWidth;
        int intrinsicHeight;
        float f4;
        Rect rect2;
        i iVar;
        View view = this.mView;
        Launcher launcher = Launcher.getLauncher(view.getContext());
        LauncherAppState launcherAppState = LauncherAppState.getInstance(launcher);
        Workspace workspace = launcher.getWorkspace();
        PendingAddItemInfo pendingAddItemInfo = this.mAddInfo;
        int[] estimateItemSize = workspace.estimateItemSize(pendingAddItemInfo);
        this.mEstimatedCellSize = estimateItemSize;
        if (pendingAddItemInfo instanceof PendingAddWidgetInfo) {
            PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) pendingAddItemInfo;
            int min = Math.min((int) (i4 * 1.25f), estimateItemSize[0]);
            int[] iArr = new int[1];
            if (this.mRemoteViewsPreview != null) {
                LauncherAppWidgetHostView launcherAppWidgetHostView = new LauncherAppWidgetHostView(launcher);
                this.mAppWidgetHostViewPreview = launcherAppWidgetHostView;
                launcherAppWidgetHostView.setAppWidget(-1, pendingAddWidgetInfo.info);
                DeviceProfile deviceProfile = launcher.getDeviceProfile();
                this.mAppWidgetHostViewPreview.updateAppWidget(this.mRemoteViewsPreview);
                Size widgetSizePx = WidgetSizes.getWidgetSizePx(deviceProfile, pendingAddItemInfo.spanX, pendingAddItemInfo.spanY);
                this.mAppWidgetHostViewPreview.measure(View.MeasureSpec.makeMeasureSpec(widgetSizePx.getWidth(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(widgetSizePx.getHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
                this.mAppWidgetHostViewPreview.setClipChildren(false);
                this.mAppWidgetHostViewPreview.setClipToPadding(false);
                this.mAppWidgetHostViewPreview.setScaleToFit(this.mRemoteViewsPreviewScale);
            }
            NavigableAppWidgetHostView navigableAppWidgetHostView = this.mAppWidgetHostViewPreview;
            if (navigableAppWidgetHostView != null) {
                iArr[0] = navigableAppWidgetHostView.getMeasuredWidth();
                launcher.getDragController().addDragListener(new AppWidgetHostViewDragListener(launcher));
            }
            rect2 = null;
            if (this.mAppWidgetHostViewPreview == null) {
                fastBitmapDrawable = new FastBitmapDrawable(new DatabaseWidgetPreviewLoader(launcher).generateWidgetPreview(pendingAddWidgetInfo.info, min, iArr), 0);
                if (Utilities.ATLEAST_S && FeatureFlags.ENABLE_ENFORCED_ROUNDED_CORNERS.get()) {
                    fastBitmapDrawable = new RoundDrawableWrapper(fastBitmapDrawable, this.mEnforcedRoundedCornersForWidget);
                }
            } else {
                fastBitmapDrawable = null;
            }
            int i6 = iArr[0];
            if (i6 < i4) {
                int i7 = (i4 - i6) / 2;
                if (i4 > i5) {
                    i7 = (i7 * i5) / i4;
                }
                rect.left += i7;
                rect.right -= i7;
            }
            NavigableAppWidgetHostView navigableAppWidgetHostView2 = this.mAppWidgetHostViewPreview;
            if (navigableAppWidgetHostView2 != null) {
                float scaleX = navigableAppWidgetHostView2.getScaleX();
                int measuredWidth = this.mAppWidgetHostViewPreview.getMeasuredWidth();
                int measuredHeight = this.mAppWidgetHostViewPreview.getMeasuredHeight();
                float f5 = measuredWidth;
                intrinsicWidth = Math.round(f5 * scaleX);
                float f6 = measuredHeight;
                intrinsicHeight = Math.round(f6 * scaleX);
                float f7 = scaleX - 1.0f;
                rect.offset(Math.round((f5 * f7) / 2.0f), Math.round((f6 * f7) / 2.0f));
            } else {
                intrinsicWidth = fastBitmapDrawable.getIntrinsicWidth();
                intrinsicHeight = fastBitmapDrawable.getIntrinsicHeight();
            }
            f4 = rect.width() / intrinsicWidth;
            launcher.getDragController().addDragListener(new WidgetHostViewLoader(launcher, view));
            iVar = new i(1);
        } else {
            Drawable fullResIcon = ((PendingAddShortcutInfo) pendingAddItemInfo).getActivityInfo(launcher).getFullResIcon(launcherAppState.getIconCache());
            LauncherIcons obtain = LauncherIcons.obtain(launcher);
            fastBitmapDrawable = new FastBitmapDrawable(obtain.createScaledBitmap(fullResIcon, 0), 0);
            intrinsicWidth = fastBitmapDrawable.getIntrinsicWidth();
            intrinsicHeight = fastBitmapDrawable.getIntrinsicHeight();
            obtain.recycle();
            f4 = launcher.getDeviceProfile().iconSizePx / intrinsicWidth;
            DeviceProfile deviceProfile2 = launcher.getDeviceProfile();
            int i8 = deviceProfile2.iconSizePx;
            int dimensionPixelSize = launcher.getResources().getDimensionPixelSize(R.dimen.widget_preview_shortcut_padding);
            rect.left += dimensionPixelSize;
            rect.top += dimensionPixelSize;
            rect2 = new Rect();
            int[] iArr2 = this.mEstimatedCellSize;
            int i9 = (iArr2[0] - i8) / 2;
            rect2.left = i9;
            rect2.right = i9 + i8;
            int i10 = (((iArr2[1] - i8) - deviceProfile2.iconTextSizePx) - deviceProfile2.iconDrawablePaddingPx) / 2;
            rect2.top = i10;
            rect2.bottom = i10 + i8;
            iVar = new i(0);
        }
        float f8 = f4;
        i iVar2 = iVar;
        Drawable drawable = fastBitmapDrawable;
        Rect rect3 = rect2;
        float f9 = intrinsicWidth;
        int i11 = point.x + rect.left + ((int) (((f8 * f9) - f9) / 2.0f));
        float f10 = intrinsicHeight;
        int i12 = point.y + rect.top + ((int) (((f8 * f10) - f10) / 2.0f));
        if (this.mAppWidgetHostViewPreview != null) {
            launcher.getDragController().startDrag(this.mAppWidgetHostViewPreview, iVar2, i11, i12, dragSource, this.mAddInfo, rect3, f8, f8, dragOptions);
        } else {
            launcher.getDragController().startDrag(drawable, iVar2, i11, i12, dragSource, this.mAddInfo, rect3, f8, f8, dragOptions);
        }
    }
}
