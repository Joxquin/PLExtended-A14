package com.google.android.apps.nexuslauncher.overview;

import V1.i;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.views.OverviewActionsView;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.c;
/* loaded from: classes.dex */
public class NexusOverviewActionsView extends OverviewActionsView {

    /* renamed from: h  reason: collision with root package name */
    public static final Interpolator f7490h = new PathInterpolator(0.45f, 0.0f, 0.0f, 1.0f);

    /* renamed from: d  reason: collision with root package name */
    public View f7491d;

    /* renamed from: e  reason: collision with root package name */
    public View f7492e;

    /* renamed from: f  reason: collision with root package name */
    public ShareTargetsView f7493f;

    /* renamed from: g  reason: collision with root package name */
    public Button f7494g;

    public NexusOverviewActionsView(Context context) {
        this(context, null);
    }

    public final void e() {
        ObjectAnimator.ofFloat(getShareTargetAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, 0.0f).setDuration(120L).start();
    }

    @Override // com.android.quickstep.views.OverviewActionsView, android.view.View.OnClickListener
    public final void onClick(View view) {
        super.onClick(view);
        if (this.mCallbacks == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.action_select) {
            ((i) this.mCallbacks).a();
        } else if (id == R.id.close) {
            ((i) this.mCallbacks).i();
        }
    }

    @Override // com.android.quickstep.views.OverviewActionsView, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f7491d = findViewById(R.id.action_buttons);
        this.f7492e = findViewById(R.id.select_mode_buttons);
        this.f7493f = (ShareTargetsView) findViewById(R.id.share_targets_view);
        Button button = (Button) findViewById(R.id.action_select);
        this.f7494g = button;
        button.setOnClickListener(this);
        this.f7494g.setCompoundDrawablesRelativeWithIntrinsicBounds(c.f7313b.get() ? R.drawable.ic_assistant_search : R.drawable.ic_select, 0, 0, 0);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f7494g.setMaxWidth(displayMetrics.widthPixels / 2);
        ((Button) findViewById(R.id.action_screenshot)).setMaxWidth(displayMetrics.widthPixels / 2);
        findViewById(R.id.close).setOnClickListener(this);
    }

    @Override // com.android.quickstep.views.OverviewActionsView, com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        super.setInsets(rect);
        ShareTargetsView shareTargetsView = this.f7493f;
        ((ViewGroup.MarginLayoutParams) shareTargetsView.getLayoutParams()).bottomMargin = shareTargetsView.f7500h.getOverviewActionsClaimedSpaceBelow();
    }

    @Override // com.android.quickstep.views.OverviewActionsView
    public final void updateDimension(DeviceProfile deviceProfile, Rect rect) {
        ShareTargetsView shareTargetsView = this.f7493f;
        shareTargetsView.f7500h = deviceProfile;
        int i4 = deviceProfile.desiredWorkspaceHorizontalMarginPx;
        Rect rect2 = deviceProfile.cellLayoutPaddingPx;
        shareTargetsView.setPadding(rect2.left + i4, 0, i4 + rect2.right, 0);
        super.updateDimension(deviceProfile, rect);
    }

    @Override // com.android.quickstep.views.OverviewActionsView
    public final void updateDisabledFlags(int i4, boolean z4) {
        super.updateDisabledFlags(i4, z4);
        if (c.f7313b.get()) {
            return;
        }
        LayoutUtils.setViewEnabled(this.f7494g, this.mDisabledFlags == 0);
    }

    @Override // com.android.quickstep.views.OverviewActionsView
    public final void updateVerticalMargin(NavigationMode navigationMode) {
        super.updateVerticalMargin(navigationMode);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) findViewById(R.id.action_buttons).getLayoutParams();
        ((FrameLayout.LayoutParams) findViewById(R.id.select_mode_buttons).getLayoutParams()).setMargins(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin, layoutParams.bottomMargin);
    }

    public NexusOverviewActionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NexusOverviewActionsView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
