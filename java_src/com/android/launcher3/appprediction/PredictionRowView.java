package com.android.launcher3.appprediction;

import G0.a;
import G0.b;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.FloatingHeaderRow;
import com.android.launcher3.allapps.FloatingHeaderView;
import com.android.launcher3.anim.AlphaUpdateListener;
import com.android.launcher3.keyboard.FocusIndicatorHelper;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class PredictionRowView extends LinearLayout implements DeviceProfile.OnDeviceProfileChangeListener, FloatingHeaderRow {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4570d = 0;
    private final Context mActivityContext;
    private final FocusIndicatorHelper.SimpleFocusIndicatorHelper mFocusHelper;
    private int mNumPredictedAppsPerRow;
    private FloatingHeaderView mParent;
    private final List mPredictedApps;
    private boolean mPredictionsEnabled;

    public PredictionRowView(Context context) {
        this(context, null);
    }

    private void applyPredictionApps() {
        if (getChildCount() != this.mNumPredictedAppsPerRow) {
            while (getChildCount() > this.mNumPredictedAppsPerRow) {
                removeViewAt(0);
            }
            LayoutInflater layoutInflater = ((ActivityContext) this.mActivityContext).getAppsView().getLayoutInflater();
            while (getChildCount() < this.mNumPredictedAppsPerRow) {
                BubbleTextView bubbleTextView = (BubbleTextView) layoutInflater.inflate(R.layout.all_apps_prediction_row_icon, (ViewGroup) this, false);
                bubbleTextView.setOnClickListener(((ActivityContext) this.mActivityContext).getItemOnClickListener());
                bubbleTextView.setOnLongClickListener(((ActivityContext) this.mActivityContext).getAllAppsItemLongClickListener());
                bubbleTextView.setLongPressTimeoutFactor();
                bubbleTextView.setOnFocusChangeListener(this.mFocusHelper);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) bubbleTextView.getLayoutParams();
                layoutParams.height = ((ActivityContext) this.mActivityContext).getDeviceProfile().allAppsCellHeightPx;
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                addView(bubbleTextView);
            }
        }
        int size = ((ArrayList) this.mPredictedApps).size();
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            BubbleTextView bubbleTextView2 = (BubbleTextView) getChildAt(i4);
            bubbleTextView2.reset();
            if (size > i4) {
                bubbleTextView2.setVisibility(0);
                bubbleTextView2.applyFromWorkspaceItem(0, (WorkspaceItemInfo) ((ArrayList) this.mPredictedApps).get(i4), false);
            } else {
                bubbleTextView2.setVisibility(size == 0 ? 8 : 4);
            }
        }
        boolean z4 = size > 0;
        if (z4 != this.mPredictionsEnabled) {
            this.mPredictionsEnabled = z4;
            updateVisibility();
        }
        this.mParent.onHeightUpdated();
    }

    private void updateVisibility() {
        setVisibility(this.mPredictionsEnabled ? 0 : 8);
        if (((ActivityContext) this.mActivityContext).getAppsView() != null) {
            if (this.mPredictionsEnabled) {
                ((ActivityContext) this.mActivityContext).getAppsView().getAppsStore().registerIconContainer(this);
            } else {
                ((ActivityContext) this.mActivityContext).getAppsView().getAppsStore().unregisterIconContainer(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        this.mFocusHelper.draw(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final int getExpectedHeight() {
        DeviceProfile deviceProfile = ((ActivityContext) this.mActivityContext).getDeviceProfile();
        int i4 = deviceProfile.allAppsIconSizePx;
        int i5 = deviceProfile.allAppsIconDrawablePaddingPx;
        int calculateTextHeight = Utilities.calculateTextHeight(deviceProfile.allAppsIconTextSizePx);
        int dimensionPixelSize = (getResources().getDimensionPixelSize(R.dimen.all_apps_predicted_icon_vertical_padding) * 2) + i4 + i5 + calculateTextHeight;
        if (getVisibility() == 8) {
            return 0;
        }
        return getPaddingBottom() + getPaddingTop() + dimensionPixelSize;
    }

    @Override // android.view.ViewGroup, com.android.launcher3.allapps.FloatingHeaderRow
    public final View getFocusedChild() {
        return getChildAt(0);
    }

    public final List getPredictedApps() {
        return new ArrayList(this.mPredictedApps);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final Class getTypeClass() {
        return PredictionRowView.class;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final boolean hasVisibleContent() {
        return this.mPredictionsEnabled;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((ActivityContext) this.mActivityContext).addOnDeviceProfileChangeListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((ActivityContext) this.mActivityContext).removeOnDeviceProfileChangeListener(this);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mNumPredictedAppsPerRow = deviceProfile.numShownAllAppsColumns;
        removeAllViews();
        applyPredictionApps();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(getExpectedHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
    }

    public final void setPredictedApps(List list) {
        ((ArrayList) this.mPredictedApps).clear();
        ((ArrayList) this.mPredictedApps).addAll((Collection) list.stream().filter(new a()).map(new b()).collect(Collectors.toList()));
        applyPredictionApps();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final void setVerticalScroll(int i4, boolean z4) {
        if (!z4) {
            setTranslationY(i4);
        }
        setAlpha(z4 ? 0.0f : 1.0f);
        if (getVisibility() != 8) {
            AlphaUpdateListener.updateVisibility(this, 4);
        }
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z4) {
        this.mParent = floatingHeaderView;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final boolean shouldDraw() {
        return getVisibility() != 8;
    }

    public PredictionRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPredictedApps = new ArrayList();
        this.mPredictionsEnabled = false;
        setOrientation(0);
        this.mFocusHelper = new FocusIndicatorHelper.SimpleFocusIndicatorHelper(this);
        Context lookupContext = ActivityContext.lookupContext(context);
        this.mActivityContext = lookupContext;
        this.mNumPredictedAppsPerRow = ((ActivityContext) lookupContext).getDeviceProfile().numShownAllAppsColumns;
        updateVisibility();
    }
}
