package com.android.quickstep.interaction;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
import f.C0832a;
/* loaded from: classes.dex */
public class TutorialStepIndicator extends LinearLayout {
    private static final String LOG_TAG = "TutorialStepIndicator";
    private int mCurrentStep;
    private int mTotalSteps;

    public TutorialStepIndicator(Context context) {
        super(context);
        this.mCurrentStep = -1;
        this.mTotalSteps = -1;
    }

    private void initializeStepIndicators() {
        for (int i4 = this.mTotalSteps; i4 < getChildCount(); i4++) {
            removeViewAt(i4);
        }
        int attrColor = GraphicsUtils.getAttrColor(16842806, getContext());
        int attrColor2 = GraphicsUtils.getAttrColor(16842810, getContext());
        for (int i5 = 0; i5 < this.mTotalSteps; i5++) {
            Drawable a4 = C0832a.a(R.drawable.tutorial_step_indicator_pill, getContext());
            if (i5 >= getChildCount()) {
                ImageView imageView = new ImageView(getContext());
                imageView.setImageDrawable(a4);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMarginStart(Utilities.dpToPx(3.0f));
                layoutParams.setMarginEnd(Utilities.dpToPx(3.0f));
                addView(imageView, layoutParams);
            }
            if (a4 != null) {
                if (i5 < this.mCurrentStep) {
                    a4.setTint(attrColor);
                } else {
                    a4.setTint(attrColor2);
                }
            }
        }
    }

    public void setTutorialProgress(int i4, int i5) {
        if (i4 <= 0) {
            Log.w(LOG_TAG, "Current step number invalid: " + i4 + ". Assuming step 1.");
            i4 = 1;
        }
        if (i5 <= 0) {
            Log.w(LOG_TAG, "Total number of steps invalid: " + i5 + ". Assuming 1 step.");
            i5 = 1;
        }
        if (i4 > i5) {
            Log.w(LOG_TAG, "Current step number greater than the total number of steps. Assuming final step.");
            i4 = i5;
        }
        if (i5 < 2) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        this.mCurrentStep = i4;
        this.mTotalSteps = i5;
        initializeStepIndicators();
    }

    public TutorialStepIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentStep = -1;
        this.mTotalSteps = -1;
    }

    public TutorialStepIndicator(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mCurrentStep = -1;
        this.mTotalSteps = -1;
    }

    public TutorialStepIndicator(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mCurrentStep = -1;
        this.mTotalSteps = -1;
    }
}
