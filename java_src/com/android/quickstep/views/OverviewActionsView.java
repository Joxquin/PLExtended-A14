package com.android.quickstep.views;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.util.LayoutUtils;
import com.android.systemui.shared.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class OverviewActionsView extends FrameLayout implements View.OnClickListener, Insettable {
    public static final int DISABLED_NO_THUMBNAIL = 4;
    public static final int DISABLED_ROTATED = 2;
    public static final int DISABLED_SCROLLING = 1;
    public static final int FLAG_IS_NOT_TABLET = 1;
    public static final int FLAG_SINGLE_TASK = 1;
    public static final int HIDDEN_ACTIONS_IN_MENU = 32;
    public static final int HIDDEN_DESKTOP = 64;
    public static final int HIDDEN_NON_ZERO_ROTATION = 1;
    public static final int HIDDEN_NO_RECENTS = 4;
    public static final int HIDDEN_NO_TASKS = 2;
    public static final int HIDDEN_SPLIT_SCREEN = 8;
    public static final int HIDDEN_SPLIT_SELECT_ACTIVE = 16;
    private static final int INDEX_CONTENT_ALPHA = 0;
    private static final int INDEX_FULLSCREEN_ALPHA = 2;
    private static final int INDEX_HIDDEN_FLAGS_ALPHA = 3;
    private static final int INDEX_SCROLL_ALPHA = 5;
    private static final int INDEX_SHARE_TARGET_ALPHA = 4;
    private static final int INDEX_VISIBILITY_ALPHA = 1;
    private static final int NUM_ALPHAS = 6;
    protected TaskOverlayFactory.OverlayUICallbacks mCallbacks;
    protected int mDisabledFlags;
    protected DeviceProfile mDp;
    private int mHiddenFlags;
    private final Rect mInsets;
    private MultiValueAlpha mMultiValueAlpha;
    private Button mSplitButton;
    private int mSplitButtonDisabledFlags;
    private int mSplitButtonHiddenFlags;
    private final Rect mTaskSize;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ActionsDisabledFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ActionsHiddenFlags {
    }

    /* loaded from: classes.dex */
    public @interface SplitButtonDisabledFlags {
    }

    /* loaded from: classes.dex */
    public @interface SplitButtonHiddenFlags {
    }

    public OverviewActionsView(Context context) {
        this(context, null);
    }

    private int getBottomMargin() {
        DeviceProfile deviceProfile = this.mDp;
        if (deviceProfile == null) {
            return 0;
        }
        if (deviceProfile.isTablet && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) {
            return this.mDp.stashedTaskbarHeight;
        }
        DeviceProfile deviceProfile2 = this.mDp;
        return ((deviceProfile2.heightPx - this.mTaskSize.bottom) - deviceProfile2.overviewActionsTopMarginPx) - deviceProfile2.overviewActionsHeight;
    }

    private void updatePadding() {
        Rect rect = this.mInsets;
        setPadding(rect.left, 0, rect.right, 0);
    }

    private void updateSplitButtonEnabledState() {
        Button button = this.mSplitButton;
        if (button == null) {
            return;
        }
        boolean z4 = true;
        boolean z5 = (this.mDisabledFlags & (-3)) == 0;
        if (this.mSplitButtonDisabledFlags != 0 || !z5) {
            z4 = false;
        }
        button.setEnabled(z4);
    }

    public int getActionsButtonVisibility() {
        return findViewById(R.id.action_buttons).getVisibility();
    }

    public MultiPropertyFactory.MultiProperty getContentAlpha() {
        return this.mMultiValueAlpha.get(0);
    }

    public MultiPropertyFactory.MultiProperty getFullscreenAlpha() {
        return this.mMultiValueAlpha.get(2);
    }

    public MultiPropertyFactory.MultiProperty getIndexScrollAlpha() {
        return this.mMultiValueAlpha.get(5);
    }

    public MultiPropertyFactory.MultiProperty getShareTargetAlpha() {
        return this.mMultiValueAlpha.get(4);
    }

    public MultiPropertyFactory.MultiProperty getVisibilityAlpha() {
        return this.mMultiValueAlpha.get(1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mCallbacks == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.action_screenshot) {
            this.mCallbacks.onScreenshot();
        } else if (id == R.id.action_split) {
            this.mCallbacks.onSplit();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateVerticalMargin(DisplayController.getNavigationMode(getContext()));
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        MultiValueAlpha multiValueAlpha = new MultiValueAlpha(6, findViewById(R.id.action_buttons), 4);
        this.mMultiValueAlpha = multiValueAlpha;
        multiValueAlpha.setUpdateVisibility();
        findViewById(R.id.action_screenshot).setOnClickListener(this);
        Button button = (Button) findViewById(R.id.action_split);
        this.mSplitButton = button;
        button.setOnClickListener(this);
    }

    public void setCallbacks(TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks) {
        this.mCallbacks = overlayUICallbacks;
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        this.mInsets.set(rect);
        updateVerticalMargin(DisplayController.getNavigationMode(getContext()));
        updatePadding();
    }

    public void updateDimension(DeviceProfile deviceProfile, Rect rect) {
        this.mDp = deviceProfile;
        this.mTaskSize.set(rect);
        updateVerticalMargin(DisplayController.getNavigationMode(getContext()));
        requestLayout();
        this.mSplitButton.setCompoundDrawablesRelativeWithIntrinsicBounds(deviceProfile.isLandscape ? R.drawable.ic_split_horizontal : R.drawable.ic_split_vertical, 0, 0, 0);
    }

    public void updateDisabledFlags(int i4, boolean z4) {
        if (z4) {
            this.mDisabledFlags = i4 | this.mDisabledFlags;
        } else {
            this.mDisabledFlags = (~i4) & this.mDisabledFlags;
        }
        LayoutUtils.setViewEnabled(this, (this.mDisabledFlags & (-3)) == 0);
        updateSplitButtonEnabledState();
    }

    public void updateHiddenFlags(int i4, boolean z4) {
        if (z4) {
            this.mHiddenFlags = i4 | this.mHiddenFlags;
        } else {
            this.mHiddenFlags = (~i4) & this.mHiddenFlags;
        }
        this.mMultiValueAlpha.get(3).setValue(this.mHiddenFlags != 0 ? 0.0f : 1.0f);
    }

    public void updateSplitButtonDisabledFlags(int i4, boolean z4) {
        if (z4) {
            this.mSplitButtonDisabledFlags = i4 | this.mSplitButtonDisabledFlags;
        } else {
            this.mSplitButtonDisabledFlags = (~i4) & this.mSplitButtonDisabledFlags;
        }
        updateSplitButtonEnabledState();
    }

    public void updateSplitButtonHiddenFlags(int i4, boolean z4) {
        if (z4) {
            this.mSplitButtonHiddenFlags = i4 | this.mSplitButtonHiddenFlags;
        } else {
            this.mSplitButtonHiddenFlags = (~i4) & this.mSplitButtonHiddenFlags;
        }
        Button button = this.mSplitButton;
        if (button == null) {
            return;
        }
        boolean z5 = this.mSplitButtonHiddenFlags == 0;
        button.setVisibility(z5 ? 0 : 8);
        findViewById(R.id.action_split_space).setVisibility(z5 ? 0 : 8);
    }

    public void updateVerticalMargin(NavigationMode navigationMode) {
        if (this.mDp == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) findViewById(R.id.action_buttons).getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, this.mDp.overviewActionsTopMarginPx, layoutParams.rightMargin, getBottomMargin());
    }

    public OverviewActionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverviewActionsView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4, 0);
        this.mInsets = new Rect();
        this.mTaskSize = new Rect();
    }
}
