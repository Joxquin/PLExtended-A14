package com.android.quickstep.views;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class SplitInstructionsView extends FrameLayout {
    public static final FloatProperty UNFOLD = new FloatProperty("SplitInstructionsUnfold") { // from class: com.android.quickstep.views.SplitInstructionsView.1
        @Override // android.util.Property
        public Float get(SplitInstructionsView splitInstructionsView) {
            return Float.valueOf(splitInstructionsView.getScaleY());
        }

        @Override // android.util.FloatProperty
        public void setValue(SplitInstructionsView splitInstructionsView, float f4) {
            splitInstructionsView.setScaleY(f4);
        }
    };
    private final StatefulActivity mLauncher;
    private AppCompatTextView mTextView;

    public SplitInstructionsView(Context context) {
        this(context, null);
    }

    private void exitSplitSelection() {
        ((RecentsView) this.mLauncher.getOverviewPanel()).getSplitSelectController().getSplitAnimationController().playPlaceholderDismissAnim(this.mLauncher);
        this.mLauncher.getStateManager().goToState(LauncherState.NORMAL);
    }

    public static SplitInstructionsView getSplitInstructionsView(StatefulActivity statefulActivity) {
        BaseDragLayer dragLayer = statefulActivity.getDragLayer();
        SplitInstructionsView splitInstructionsView = (SplitInstructionsView) statefulActivity.getLayoutInflater().inflate(R.layout.split_instructions_view, (ViewGroup) dragLayer, false);
        splitInstructionsView.init();
        splitInstructionsView.forceHasOverlappingRendering(false);
        dragLayer.addView(splitInstructionsView);
        return splitInstructionsView;
    }

    private void init() {
        this.mTextView = (AppCompatTextView) findViewById(R.id.split_instructions_text);
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            this.mTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.quickstep.views.L
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean lambda$init$0;
                    lambda$init$0 = SplitInstructionsView.this.lambda$init$0(view, motionEvent);
                    return lambda$init$0;
                }
            });
        } else {
            this.mTextView.setCompoundDrawables(null, null, null, null);
        }
    }

    private boolean isTouchInsideRightCompoundDrawable(MotionEvent motionEvent) {
        Drawable drawable = this.mTextView.getCompoundDrawablesRelative()[2];
        return drawable != null && motionEvent.getX() >= ((float) (this.mTextView.getWidth() - drawable.getBounds().width()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$init$0(View view, MotionEvent motionEvent) {
        if (isTouchInsideRightCompoundDrawable(motionEvent)) {
            if (motionEvent.getAction() == 1) {
                exitSplitSelection();
            }
            return true;
        }
        return false;
    }

    public void ensureProperRotation() {
        ((RecentsView) this.mLauncher.getOverviewPanel()).getPagedOrientationHandler().setSplitInstructionsParams(this, this.mLauncher.getDeviceProfile(), getMeasuredHeight(), getMeasuredWidth());
    }

    public AppCompatTextView getTextView() {
        return this.mTextView;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.toast_split_select_cont_desc, getResources().getString(R.string.toast_split_select_cont_desc)));
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        ensureProperRotation();
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i4, Bundle bundle) {
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get() && i4 == R.string.toast_split_select_cont_desc) {
            exitSplitSelection();
            return true;
        }
        return super.performAccessibilityAction(i4, bundle);
    }

    public SplitInstructionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SplitInstructionsView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mLauncher = (StatefulActivity) context;
    }
}
