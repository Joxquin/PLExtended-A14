package com.android.quickstep.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.widget.Button;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.touch.PagedOrientationHandler;
/* loaded from: classes.dex */
public class ClearAllButton extends Button {
    private final StatefulActivity mActivity;
    private float mContentAlpha;
    private float mDismissAlpha;
    private float mFullscreenProgress;
    private float mFullscreenTranslationPrimary;
    private float mGridProgress;
    private float mGridScrollOffset;
    private float mGridTranslationPrimary;
    private boolean mIsRtl;
    private float mNormalTranslationPrimary;
    private float mScrollAlpha;
    private float mScrollOffsetPrimary;
    private int mSidePadding;
    private float mVisibilityAlpha;
    public static final FloatProperty VISIBILITY_ALPHA = new FloatProperty("visibilityAlpha") { // from class: com.android.quickstep.views.ClearAllButton.1
        @Override // android.util.Property
        public Float get(ClearAllButton clearAllButton) {
            return Float.valueOf(clearAllButton.mVisibilityAlpha);
        }

        @Override // android.util.FloatProperty
        public void setValue(ClearAllButton clearAllButton, float f4) {
            clearAllButton.setVisibilityAlpha(f4);
        }
    };
    public static final FloatProperty DISMISS_ALPHA = new FloatProperty("dismissAlpha") { // from class: com.android.quickstep.views.ClearAllButton.2
        @Override // android.util.Property
        public Float get(ClearAllButton clearAllButton) {
            return Float.valueOf(clearAllButton.mDismissAlpha);
        }

        @Override // android.util.FloatProperty
        public void setValue(ClearAllButton clearAllButton, float f4) {
            clearAllButton.setDismissAlpha(f4);
        }
    };

    public ClearAllButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScrollAlpha = 1.0f;
        this.mContentAlpha = 1.0f;
        this.mVisibilityAlpha = 1.0f;
        this.mDismissAlpha = 1.0f;
        this.mFullscreenProgress = 1.0f;
        this.mGridProgress = 1.0f;
        this.mIsRtl = getLayoutDirection() == 1;
        this.mActivity = (StatefulActivity) BaseActivity.fromContext(context);
    }

    private void applyPrimaryTranslation() {
        RecentsView recentsView = getRecentsView();
        if (recentsView == null) {
            return;
        }
        PagedOrientationHandler pagedOrientationHandler = recentsView.getPagedOrientationHandler();
        pagedOrientationHandler.getPrimaryViewTranslate().set((FloatProperty) this, Float.valueOf(pagedOrientationHandler.getPrimaryValue(0.0f, getOriginalTranslationY()) + this.mNormalTranslationPrimary + getFullscreenTrans(this.mFullscreenTranslationPrimary) + getGridTrans(this.mGridTranslationPrimary)));
    }

    private void applySecondaryTranslation() {
        RecentsView recentsView = getRecentsView();
        if (recentsView == null) {
            return;
        }
        PagedOrientationHandler pagedOrientationHandler = recentsView.getPagedOrientationHandler();
        pagedOrientationHandler.getSecondaryViewTranslate().set((FloatProperty) this, Float.valueOf(pagedOrientationHandler.getSecondaryValue(0.0f, getOriginalTranslationY())));
    }

    private float getFullscreenTrans(float f4) {
        if (this.mFullscreenProgress > 0.0f) {
            return f4;
        }
        return 0.0f;
    }

    private float getGridTrans(float f4) {
        if (this.mGridProgress > 0.0f) {
            return f4;
        }
        return 0.0f;
    }

    private float getOriginalTranslationY() {
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        return deviceProfile.isTablet ? FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get() ? ((getRecentsView().getLastComputedTaskSize().height() + deviceProfile.overviewTaskThumbnailTopMarginPx) / 2.0f) + deviceProfile.overviewRowSpacing : deviceProfile.overviewRowSpacing : deviceProfile.overviewTaskThumbnailTopMarginPx / 2.0f;
    }

    private RecentsView getRecentsView() {
        return (RecentsView) getParent();
    }

    private void updateAlpha() {
        float f4 = this.mScrollAlpha * this.mContentAlpha * this.mVisibilityAlpha * this.mDismissAlpha;
        setAlpha(f4);
        setClickable(Math.min(f4, 1.0f) == 1.0f);
    }

    public float getOffsetAdjustment(boolean z4, boolean z5) {
        return getScrollAdjustment(z4, z5);
    }

    public float getScrollAdjustment(boolean z4, boolean z5) {
        float f4 = z4 ? 0.0f + this.mFullscreenTranslationPrimary : 0.0f;
        if (z5) {
            f4 += this.mGridTranslationPrimary + this.mGridScrollOffset;
        }
        return f4 + this.mScrollOffsetPrimary;
    }

    public float getScrollAlpha() {
        return this.mScrollAlpha;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        this.mSidePadding = getRecentsView().getPagedOrientationHandler().getClearAllSidePadding(getRecentsView(), this.mIsRtl);
    }

    public void onRecentsViewScroll(int i4, boolean z4) {
        RecentsView recentsView = getRecentsView();
        if (recentsView == null) {
            return;
        }
        float primaryValue = recentsView.getPagedOrientationHandler().getPrimaryValue(getWidth(), getHeight());
        if (primaryValue == 0.0f) {
            return;
        }
        int clearAllScroll = recentsView.getClearAllScroll();
        float min = Math.min(Math.abs(i4 - clearAllScroll), primaryValue);
        if (this.mIsRtl) {
            min = -min;
        }
        this.mNormalTranslationPrimary = min;
        if (!z4) {
            this.mNormalTranslationPrimary = min + this.mSidePadding;
        }
        applyPrimaryTranslation();
        applySecondaryTranslation();
        float clearAllExtraPageSpacing = recentsView.getClearAllExtraPageSpacing() + recentsView.getPageSpacing();
        if (this.mIsRtl) {
            clearAllExtraPageSpacing = -clearAllExtraPageSpacing;
        }
        this.mScrollAlpha = Math.max(((clearAllScroll + clearAllExtraPageSpacing) - i4) / clearAllExtraPageSpacing, 0.0f);
        updateAlpha();
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i4) {
        super.onRtlPropertiesChanged(i4);
        this.mIsRtl = getLayoutDirection() == 1;
    }

    public void setContentAlpha(float f4) {
        if (this.mContentAlpha != f4) {
            this.mContentAlpha = f4;
            updateAlpha();
        }
    }

    public void setDismissAlpha(float f4) {
        if (this.mDismissAlpha != f4) {
            this.mDismissAlpha = f4;
            updateAlpha();
        }
    }

    public void setFullscreenProgress(float f4) {
        this.mFullscreenProgress = f4;
        applyPrimaryTranslation();
    }

    public void setFullscreenTranslationPrimary(float f4) {
        this.mFullscreenTranslationPrimary = f4;
        applyPrimaryTranslation();
    }

    public void setGridProgress(float f4) {
        this.mGridProgress = f4;
        applyPrimaryTranslation();
    }

    public void setGridScrollOffset(float f4) {
        this.mGridScrollOffset = f4;
    }

    public void setGridTranslationPrimary(float f4) {
        this.mGridTranslationPrimary = f4;
        applyPrimaryTranslation();
    }

    public void setScrollOffsetPrimary(float f4) {
        this.mScrollOffsetPrimary = f4;
    }

    public void setVisibilityAlpha(float f4) {
        if (this.mVisibilityAlpha != f4) {
            this.mVisibilityAlpha = f4;
            updateAlpha();
        }
    }
}
