package com.android.launcher3.allapps;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class WorkEduCard extends FrameLayout implements View.OnClickListener, Animation.AnimationListener {
    private final ActivityContext mActivityContext;
    Animation mDismissAnim;
    private int mPosition;

    public WorkEduCard(Context context) {
        this(context, null, 0);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        if (this.mPosition == -1) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
                return;
            }
            return;
        }
        AllAppsRecyclerView allAppsRecyclerView = ((ActivityAllAppsContainerView.AdapterHolder) this.mActivityContext.getAppsView().mAH.get(1)).mRecyclerView;
        ((ArrayList) allAppsRecyclerView.mApps.getAdapterItems()).remove(this.mPosition);
        allAppsRecyclerView.getAdapter().notifyItemRemoved(this.mPosition);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mDismissAnim.reset();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        startAnimation(this.mDismissAnim);
        Context context = getContext();
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs.Companion.get(context).put(LauncherPrefs.WORK_EDU_STEP, 1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mDismissAnim.cancel();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        findViewById(R.id.action_btn).setOnClickListener(this);
        updateStringFromCache();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int size = View.MeasureSpec.getSize(i4);
        findViewById(R.id.wrapper).getLayoutParams().width = PersonalWorkSlidingTabStrip.getTabWidth(size, getContext());
        super.onMeasure(i4, i5);
    }

    public final void setPosition(int i4) {
        this.mPosition = i4;
    }

    public final void updateStringFromCache() {
        StringCache stringCache = this.mActivityContext.getStringCache();
        if (stringCache != null) {
            ((TextView) findViewById(R.id.work_apps_paused_title)).setText(stringCache.workProfileEdu);
        }
    }

    public WorkEduCard(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WorkEduCard(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mPosition = -1;
        this.mActivityContext = (ActivityContext) ActivityContext.lookupContext(getContext());
        Animation loadAnimation = AnimationUtils.loadAnimation(context, 17432577);
        this.mDismissAnim = loadAnimation;
        loadAnimation.setDuration(500L);
        this.mDismissAnim.setAnimationListener(this);
    }
}
