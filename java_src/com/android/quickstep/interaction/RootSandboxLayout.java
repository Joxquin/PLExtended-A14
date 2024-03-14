package com.android.quickstep.interaction;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.widget.RelativeLayout;
import androidx.fragment.app.K;
import androidx.lifecycle.InterfaceC0242h;
import com.android.launcher3.R$styleable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class RootSandboxLayout extends RelativeLayout {
    final int mColorOnSurfaceBack;
    final int mColorOnSurfaceHome;
    final int mColorOnSurfaceOverview;
    final int mColorSecondaryBack;
    final int mColorSecondaryHome;
    final int mColorSecondaryOverview;
    final int mColorSurfaceBack;
    final int mColorSurfaceContainer;
    final int mColorSurfaceHome;
    final int mColorSurfaceOverview;
    private View mDoneButton;
    private View mFeedbackView;
    private View mSkipButton;
    private final Rect mTempExclusionBounds;
    private final Rect mTempInclusionBounds;
    private final Rect mTempStepIndicatorBounds;
    private View mTutorialStepView;

    public RootSandboxLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishInflate$0(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        if (this.mSkipButton.getVisibility() == 0 || this.mDoneButton.getVisibility() == 0) {
            boolean z4 = true;
            boolean z5 = this.mSkipButton.getVisibility() == 0;
            boolean isRtl = Utilities.isRtl(getContext().getResources());
            View view2 = z5 ? this.mSkipButton : this.mDoneButton;
            if ((!z5 || isRtl) && (z5 || !isRtl)) {
                z4 = false;
            }
            updateTutorialStepViewTranslation(view2, z4);
        }
    }

    private void updateTutorialStepViewTranslation(View view, boolean z4) {
        this.mTempStepIndicatorBounds.set(this.mTutorialStepView.getLeft(), this.mTutorialStepView.getTop(), this.mTutorialStepView.getRight(), this.mTutorialStepView.getBottom());
        this.mTempInclusionBounds.set(0, 0, this.mFeedbackView.getWidth(), this.mFeedbackView.getHeight());
        this.mTempExclusionBounds.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        View view2 = this.mTutorialStepView;
        Rect rect = this.mTempStepIndicatorBounds;
        Rect rect2 = this.mTempInclusionBounds;
        Rect rect3 = this.mTempExclusionBounds;
        boolean z5 = z4 ? true : true;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        if (!z5) {
            view2.setTranslationY(Math.max(Math.min(0, rect3.top - rect.bottom), rect2.top - rect.top));
        } else if (z5) {
            view2.setTranslationY(Math.min(Math.max(0, rect3.bottom - rect.top), rect2.bottom - rect.bottom));
        } else if (z5) {
            view2.setTranslationX(Math.max(Math.min(0, rect3.left - rect.right), rect2.left - rect.left));
        } else if (!z5) {
        } else {
            view2.setTranslationX(Math.min(Math.max(0, rect3.right - rect.left), rect2.right - rect.right));
        }
    }

    public int getFullscreenHeight() {
        Insets insets = getRootWindowInsets().getInsets(WindowInsets.Type.systemBars());
        return getHeight() + insets.top + insets.bottom;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            return;
        }
        View findViewById = findViewById(R.id.gesture_tutorial_fragment_feedback_view);
        this.mFeedbackView = findViewById;
        this.mTutorialStepView = findViewById.findViewById(R.id.gesture_tutorial_fragment_feedback_tutorial_step);
        this.mSkipButton = this.mFeedbackView.findViewById(R.id.gesture_tutorial_fragment_close_button);
        this.mDoneButton = this.mFeedbackView.findViewById(R.id.gesture_tutorial_fragment_action_button);
        this.mFeedbackView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.quickstep.interaction.p
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                RootSandboxLayout.this.lambda$onFinishInflate$0(view, i4, i5, i6, i7, i8, i9, i10, i11);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        InterfaceC0242h interfaceC0242h;
        RootSandboxLayout rootSandboxLayout = this;
        while (true) {
            interfaceC0242h = null;
            if (rootSandboxLayout == 0) {
                break;
            }
            Object tag = rootSandboxLayout.getTag(R.id.fragment_container_view_tag);
            InterfaceC0242h interfaceC0242h2 = tag instanceof K ? (K) tag : null;
            if (interfaceC0242h2 != null) {
                interfaceC0242h = interfaceC0242h2;
                break;
            }
            ViewParent parent = rootSandboxLayout.getParent();
            rootSandboxLayout = parent instanceof View ? (View) parent : 0;
        }
        if (interfaceC0242h != null) {
            return ((TutorialFragment) interfaceC0242h).onInterceptTouch(motionEvent);
        }
        throw new IllegalStateException("View " + this + " does not have a Fragment set");
    }

    public RootSandboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RootSandboxLayout(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public RootSandboxLayout(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mTempStepIndicatorBounds = new Rect();
        this.mTempInclusionBounds = new Rect();
        this.mTempExclusionBounds = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RootSandboxLayout, i4, i5);
        boolean isDarkTheme = Utilities.isDarkTheme(context);
        int i6 = isDarkTheme ? -16777216 : -1;
        int i7 = isDarkTheme ? -1 : -16777216;
        this.mColorSurfaceContainer = obtainStyledAttributes.getColor(7, i6);
        this.mColorOnSurfaceHome = obtainStyledAttributes.getColor(1, i7);
        this.mColorSurfaceHome = obtainStyledAttributes.getColor(8, i6);
        this.mColorSecondaryHome = obtainStyledAttributes.getColor(4, -7829368);
        this.mColorOnSurfaceBack = obtainStyledAttributes.getColor(0, i7);
        this.mColorSurfaceBack = obtainStyledAttributes.getColor(6, i6);
        this.mColorSecondaryBack = obtainStyledAttributes.getColor(3, -7829368);
        this.mColorOnSurfaceOverview = obtainStyledAttributes.getColor(2, i7);
        this.mColorSurfaceOverview = obtainStyledAttributes.getColor(9, i6);
        this.mColorSecondaryOverview = obtainStyledAttributes.getColor(5, -7829368);
        obtainStyledAttributes.recycle();
    }
}
