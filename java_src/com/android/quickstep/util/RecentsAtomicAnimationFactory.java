package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public class RecentsAtomicAnimationFactory extends StateManager.AtomicAnimationFactory {
    public static final int INDEX_RECENTS_FADE_ANIM = 0;
    public static final int INDEX_RECENTS_TRANSLATE_X_ANIM = 1;
    private static final int MY_ANIM_COUNT = 2;
    protected final StatefulActivity mActivity;

    public RecentsAtomicAnimationFactory(StatefulActivity statefulActivity) {
        super(2);
        this.mActivity = statefulActivity;
    }

    @Override // com.android.launcher3.statemanager.StateManager.AtomicAnimationFactory
    public Animator createStateElementAnimation(int i4, float... fArr) {
        if (i4 != 0) {
            if (i4 != 1) {
                return super.createStateElementAnimation(i4, fArr);
            }
            SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(this.mActivity);
            springAnimationBuilder.setMinimumVisibleChange(0.002f);
            springAnimationBuilder.setDampingRatio(0.8f);
            springAnimationBuilder.setStiffness(250.0f);
            springAnimationBuilder.setValues(fArr);
            return springAnimationBuilder.build((RecentsView) this.mActivity.getOverviewPanel(), RecentsView.ADJACENT_PAGE_HORIZONTAL_OFFSET);
        }
        return ObjectAnimator.ofFloat((RecentsView) this.mActivity.getOverviewPanel(), RecentsView.CONTENT_ALPHA, fArr);
    }
}
