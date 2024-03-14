package com.android.launcher3.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.systemui.shared.R;
import java.util.List;
/* loaded from: classes.dex */
public final class PendingAppWidgetHostView extends LauncherAppWidgetHostView implements View.OnClickListener, IconCache.ItemInfoUpdateReceiver {
    private FastBitmapDrawable mCenterDrawable;
    private View.OnClickListener mClickListener;
    private final boolean mDisabledForSafeMode;
    private boolean mDrawableSizeChanged;
    private final LauncherAppWidgetInfo mInfo;
    private final TextPaint mPaint;
    private final Rect mRect;
    private Drawable mSettingIconDrawable;
    private Layout mSetupTextLayout;
    private final int mStartState;

    public PendingAppWidgetHostView(Context context, LauncherAppWidgetInfo launcherAppWidgetInfo, IconCache iconCache, boolean z4) {
        super(new ContextThemeWrapper(context, (int) R.style.WidgetContainerTheme));
        this.mRect = new Rect();
        this.mInfo = launcherAppWidgetInfo;
        this.mStartState = launcherAppWidgetInfo.restoreStatus;
        this.mDisabledForSafeMode = z4;
        TextPaint textPaint = new TextPaint();
        this.mPaint = textPaint;
        textPaint.setColor(GraphicsUtils.getAttrColor(16842806, getContext()));
        textPaint.setTextSize(TypedValue.applyDimension(0, this.mLauncher.getDeviceProfile().iconTextSizePx, getResources().getDisplayMetrics()));
        setBackgroundResource(R.drawable.pending_widget_bg);
        setWillNotDraw(false);
        super.updateAppWidget(null);
        this.mClickListener = this.mLauncher.getItemOnClickListener();
        PackageItemInfo packageItemInfo = launcherAppWidgetInfo.pendingItemInfo;
        if (packageItemInfo != null) {
            reapplyItemInfo(packageItemInfo);
            return;
        }
        PackageItemInfo packageItemInfo2 = new PackageItemInfo(-1, launcherAppWidgetInfo.user, launcherAppWidgetInfo.providerName.getPackageName());
        launcherAppWidgetInfo.pendingItemInfo = packageItemInfo2;
        iconCache.updateIconInBackground(this, packageItemInfo2);
    }

    public final void applyState() {
        FastBitmapDrawable fastBitmapDrawable = this.mCenterDrawable;
        if (fastBitmapDrawable != null) {
            fastBitmapDrawable.setLevel(Math.max(this.mInfo.installProgress, 0));
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    public final View getDefaultView() {
        View inflate = this.mInflater.inflate(R.layout.appwidget_not_ready, (ViewGroup) this, false);
        inflate.setOnClickListener(this);
        applyState();
        invalidate();
        return inflate;
    }

    public final boolean isReadyForClickSetup() {
        return !this.mInfo.hasRestoreFlag(2) && (this.mInfo.hasRestoreFlag(4) || this.mInfo.hasRestoreFlag(1));
    }

    public final boolean isReinflateIfNeeded() {
        return this.mStartState != this.mInfo.restoreStatus;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.mClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z4;
        if (this.mCenterDrawable == null) {
            return;
        }
        if (this.mDrawableSizeChanged) {
            DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.pending_widget_min_padding);
            int width = (getWidth() - paddingLeft) - paddingRight;
            int i4 = dimensionPixelSize * 2;
            int i5 = width - i4;
            int height = ((getHeight() - paddingTop) - paddingBottom) - i4;
            if (this.mSettingIconDrawable == null) {
                int min = Math.min(deviceProfile.iconSizePx, Math.min(i5, height));
                this.mRect.set(0, 0, min, min);
                this.mRect.offsetTo((getWidth() - this.mRect.width()) / 2, (getHeight() - this.mRect.height()) / 2);
                this.mCenterDrawable.setBounds(this.mRect);
                z4 = false;
            } else {
                float max = Math.max(0, Math.min(i5, height));
                float max2 = Math.max(i5, height);
                if (max * 1.8f > max2) {
                    max = max2 / 1.8f;
                }
                int min2 = (int) Math.min(max, deviceProfile.iconSizePx);
                int height2 = (getHeight() - min2) / 2;
                this.mSetupTextLayout = null;
                if (i5 > 0) {
                    StaticLayout staticLayout = new StaticLayout(getResources().getText(R.string.gadget_complete_setup_text), this.mPaint, i5, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
                    this.mSetupTextLayout = staticLayout;
                    int height3 = staticLayout.getHeight();
                    if ((min2 * 1.8f) + height3 + deviceProfile.iconDrawablePaddingPx < height) {
                        height2 = (((getHeight() - height3) - deviceProfile.iconDrawablePaddingPx) - min2) / 2;
                    } else {
                        this.mSetupTextLayout = null;
                    }
                }
                this.mRect.set(0, 0, min2, min2);
                this.mRect.offset((getWidth() - min2) / 2, height2);
                this.mCenterDrawable.setBounds(this.mRect);
                Rect rect = this.mRect;
                int i6 = paddingLeft + dimensionPixelSize;
                rect.left = i6;
                int i7 = (int) (min2 * 0.4f);
                rect.right = i6 + i7;
                int i8 = paddingTop + dimensionPixelSize;
                rect.top = i8;
                rect.bottom = i8 + i7;
                this.mSettingIconDrawable.setBounds(rect);
                if (this.mSetupTextLayout != null) {
                    Rect rect2 = this.mRect;
                    rect2.left = i6;
                    rect2.top = this.mCenterDrawable.getBounds().bottom + deviceProfile.iconDrawablePaddingPx;
                }
                z4 = false;
            }
            this.mDrawableSizeChanged = z4;
        }
        this.mCenterDrawable.draw(canvas);
        Drawable drawable = this.mSettingIconDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        if (this.mSetupTextLayout != null) {
            canvas.save();
            Rect rect3 = this.mRect;
            canvas.translate(rect3.left, rect3.top);
            this.mSetupTextLayout.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        this.mDrawableSizeChanged = true;
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public final void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        FastBitmapDrawable fastBitmapDrawable = this.mCenterDrawable;
        if (fastBitmapDrawable != null) {
            fastBitmapDrawable.setCallback(null);
            this.mCenterDrawable = null;
        }
        if (itemInfoWithIcon.bitmap.icon != null) {
            PackageItemInfo packageItemInfo = this.mInfo.pendingItemInfo;
            FastBitmapDrawable newIcon = packageItemInfo.widgetCategory == -1 ? null : packageItemInfo.newIcon(0, getContext());
            if (this.mDisabledForSafeMode) {
                if (newIcon == null) {
                    FastBitmapDrawable newIcon2 = itemInfoWithIcon.newIcon(0, getContext());
                    newIcon2.setIsDisabled(true);
                    this.mCenterDrawable = newIcon2;
                } else {
                    newIcon.setColorFilter(FastBitmapDrawable.getDisabledColorFilter());
                    this.mCenterDrawable = newIcon;
                }
                this.mSettingIconDrawable = null;
            } else if (isReadyForClickSetup()) {
                if (newIcon == null) {
                    newIcon = itemInfoWithIcon.newIcon(0, getContext());
                }
                this.mCenterDrawable = newIcon;
                this.mSettingIconDrawable = getResources().getDrawable(R.drawable.ic_setting).mutate();
                Color.colorToHSV(itemInfoWithIcon.bitmap.color, r0);
                float[] fArr = {0.0f, Math.min(fArr[1], 0.7f), 1.0f};
                this.mSettingIconDrawable.setColorFilter(Color.HSVToColor(fArr), PorterDuff.Mode.SRC_IN);
            } else {
                if (newIcon == null) {
                    newIcon = PreloadIconDrawable.newPendingIcon(getContext(), itemInfoWithIcon);
                }
                this.mCenterDrawable = newIcon;
                this.mSettingIconDrawable = null;
                applyState();
            }
            this.mCenterDrawable.setCallback(this);
            this.mDrawableSizeChanged = true;
        }
        invalidate();
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.mClickListener = onClickListener;
    }

    @Override // com.android.launcher3.widget.LauncherAppWidgetHostView, android.appwidget.AppWidgetHostView
    public final void updateAppWidget(RemoteViews remoteViews) {
        if (AppWidgetManager.getInstance(getContext()).getAppWidgetOptions(this.mInfo.appWidgetId).getBoolean("appWidgetRestoreCompleted")) {
            super.updateAppWidget(remoteViews);
            reInflate();
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    public final void updateAppWidgetSize(Bundle bundle, int i4, int i5, int i6, int i7) {
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mCenterDrawable || super.verifyDrawable(drawable);
    }

    @Override // android.appwidget.AppWidgetHostView
    public final void updateAppWidgetSize(Bundle bundle, List list) {
    }
}
