package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.Rect;
import android.icu.text.MessageFormat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.taskbar.KeyboardQuickSwitchViewController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.quickstep.util.GroupTask;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes.dex */
public class KeyboardQuickSwitchView extends ConstraintLayout {
    private static final Interpolator CLOSE_OUTLINE_INTERPOLATOR;
    private static final Interpolator CLOSE_TRANSLATION_Y_INTERPOLATOR;
    private static final Interpolator OPEN_OUTLINE_INTERPOLATOR;
    private static final Interpolator OPEN_TRANSLATION_X_INTERPOLATOR;
    private static final Interpolator OPEN_TRANSLATION_Y_INTERPOLATOR;
    private ConstraintLayout mContent;
    private boolean mDisplayingRecentTasks;
    private boolean mIsRtl;
    private View mNoRecentItemsPane;
    private AnimatorSet mOpenAnimation;
    private final AnimatedFloat mOutlineAnimationProgress;
    private int mOutlineRadius;
    private HorizontalScrollView mScrollView;
    private int mSpacing;
    private int mTaskViewHeight;
    private KeyboardQuickSwitchViewController.ViewCallbacks mViewCallbacks;

    static {
        Interpolator interpolator = y0.e.f12939c;
        OPEN_OUTLINE_INTERPOLATOR = interpolator;
        Interpolator interpolator2 = y0.e.f12938b;
        CLOSE_OUTLINE_INTERPOLATOR = interpolator2;
        OPEN_TRANSLATION_X_INTERPOLATOR = y0.e.f12937a;
        OPEN_TRANSLATION_Y_INTERPOLATOR = interpolator;
        CLOSE_TRANSLATION_Y_INTERPOLATOR = interpolator2;
    }

    public KeyboardQuickSwitchView(Context context) {
        this(context, null);
    }

    public static void A(KeyboardQuickSwitchView keyboardQuickSwitchView, int i4, boolean z4) {
        KeyboardQuickSwitchTaskView taskAt;
        if (keyboardQuickSwitchView.mDisplayingRecentTasks && (taskAt = keyboardQuickSwitchView.getTaskAt(i4)) != null) {
            if (keyboardQuickSwitchView.mIsRtl) {
                keyboardQuickSwitchView.scrollRightTo(taskAt, z4, false);
            } else {
                keyboardQuickSwitchView.scrollLeftTo(taskAt, z4, false);
            }
        }
    }

    public static void B(KeyboardQuickSwitchView keyboardQuickSwitchView, KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView) {
        keyboardQuickSwitchView.scrollLeftTo(keyboardQuickSwitchTaskView, false, true);
    }

    public static void C(KeyboardQuickSwitchView keyboardQuickSwitchView, KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView) {
        keyboardQuickSwitchView.scrollRightTo(keyboardQuickSwitchTaskView, false, true);
    }

    public static void r(KeyboardQuickSwitchView keyboardQuickSwitchView) {
        KeyboardQuickSwitchViewController keyboardQuickSwitchViewController = KeyboardQuickSwitchViewController.this;
        keyboardQuickSwitchViewController.launchTaskAt(6);
        keyboardQuickSwitchViewController.closeQuickSwitchView(true);
    }

    public static void s(KeyboardQuickSwitchView keyboardQuickSwitchView, int i4) {
        KeyboardQuickSwitchViewController keyboardQuickSwitchViewController = KeyboardQuickSwitchViewController.this;
        keyboardQuickSwitchViewController.launchTaskAt(i4);
        keyboardQuickSwitchViewController.closeQuickSwitchView(true);
    }

    private void scrollLeftTo(KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView, boolean z4, boolean z5) {
        if (this.mDisplayingRecentTasks) {
            if (!z5 || shouldScroll(keyboardQuickSwitchTaskView, z4)) {
                int right = ((keyboardQuickSwitchTaskView.getRight() + this.mSpacing) - this.mScrollView.getWidth()) - (z4 ? keyboardQuickSwitchTaskView.getWidth() / 2 : 0);
                if (z5) {
                    this.mScrollView.smoothScrollTo(right, 0);
                } else {
                    this.mScrollView.scrollTo(right, 0);
                }
            }
        }
    }

    private void scrollRightTo(KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView, boolean z4, boolean z5) {
        if (this.mDisplayingRecentTasks) {
            if (!z5 || shouldScroll(keyboardQuickSwitchTaskView, z4)) {
                int left = (keyboardQuickSwitchTaskView.getLeft() - this.mSpacing) + (z4 ? keyboardQuickSwitchTaskView.getWidth() / 2 : 0);
                if (z5) {
                    this.mScrollView.smoothScrollTo(left, 0);
                } else {
                    this.mScrollView.scrollTo(left, 0);
                }
            }
        }
    }

    private boolean shouldScroll(KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView, boolean z4) {
        return (keyboardQuickSwitchTaskView.getRight() + this.mSpacing > this.mScrollView.getWidth() + this.mScrollView.getScrollX() || Math.max(0, keyboardQuickSwitchTaskView.getLeft() - this.mSpacing) < this.mScrollView.getScrollX()) && !z4;
    }

    public static void z(KeyboardQuickSwitchView keyboardQuickSwitchView, final int i4) {
        AnimatorSet animatorSet = keyboardQuickSwitchView.mOpenAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        keyboardQuickSwitchView.mOpenAnimation = new AnimatorSet();
        ObjectAnimator animateToValue = keyboardQuickSwitchView.mOutlineAnimationProgress.animateToValue(1.0f);
        animateToValue.setDuration(333L);
        keyboardQuickSwitchView.mOpenAnimation.play(animateToValue);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(keyboardQuickSwitchView, ViewGroup.ALPHA, 0.0f, 1.0f);
        ofFloat.setDuration(83L);
        keyboardQuickSwitchView.mOpenAnimation.play(ofFloat);
        final View view = keyboardQuickSwitchView.mDisplayingRecentTasks ? keyboardQuickSwitchView.mScrollView : keyboardQuickSwitchView.mNoRecentItemsPane;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, ViewGroup.TRANSLATION_X, -Utilities.dpToPx(32.0f), 0.0f);
        ofFloat2.setDuration(500L);
        ofFloat2.setInterpolator(OPEN_TRANSLATION_X_INTERPOLATOR);
        keyboardQuickSwitchView.mOpenAnimation.play(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, ViewGroup.TRANSLATION_Y, -Utilities.dpToPx(40.0f), 0.0f);
        ofFloat3.setDuration(333L);
        ofFloat3.setInterpolator(OPEN_TRANSLATION_Y_INTERPOLATOR);
        keyboardQuickSwitchView.mOpenAnimation.play(ofFloat3);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view, ViewGroup.ALPHA, 0.0f, 1.0f);
        ofFloat4.setStartDelay(83L);
        ofFloat4.setDuration(83L);
        keyboardQuickSwitchView.mOpenAnimation.play(ofFloat4);
        final ViewOutlineProvider outlineProvider = keyboardQuickSwitchView.getOutlineProvider();
        keyboardQuickSwitchView.mOpenAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.KeyboardQuickSwitchView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                KeyboardQuickSwitchView.this.setClipToPadding(true);
                KeyboardQuickSwitchView.this.setOutlineProvider(outlineProvider);
                KeyboardQuickSwitchView.this.invalidateOutline();
                KeyboardQuickSwitchView.this.mOpenAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                KeyboardQuickSwitchView.this.setClipToPadding(false);
                KeyboardQuickSwitchView.this.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.taskbar.KeyboardQuickSwitchView.3.1
                    @Override // android.view.ViewOutlineProvider
                    public final void getOutline(View view2, Outline outline) {
                        outline.setRoundRect(new Rect(0, 0, KeyboardQuickSwitchView.this.getWidth(), (int) (Utilities.mapBoundToRange(KeyboardQuickSwitchView.this.mOutlineAnimationProgress.value, 0.0f, 1.0f, 0.45f, 1.0f, KeyboardQuickSwitchView.OPEN_OUTLINE_INTERPOLATOR) * KeyboardQuickSwitchView.this.getHeight())), Utilities.mapBoundToRange(KeyboardQuickSwitchView.this.mOutlineAnimationProgress.value, 0.0f, 1.0f, 0.25f, 1.0f, KeyboardQuickSwitchView.OPEN_OUTLINE_INTERPOLATOR) * KeyboardQuickSwitchView.this.mOutlineRadius);
                    }
                });
                int i5 = i4;
                if (i5 == -1) {
                    KeyboardQuickSwitchView.A(KeyboardQuickSwitchView.this, 0, false);
                } else {
                    KeyboardQuickSwitchView.this.animateFocusMove(-1, i5);
                }
                view.setVisibility(0);
                KeyboardQuickSwitchView.this.setVisibility(0);
                KeyboardQuickSwitchView.this.requestFocus();
            }
        });
        keyboardQuickSwitchView.mOpenAnimation.start();
    }

    public final void animateFocusMove(final int i4, final int i5) {
        final KeyboardQuickSwitchTaskView taskAt;
        if (this.mDisplayingRecentTasks && (taskAt = getTaskAt(i5)) != null) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(taskAt.getFocusAnimator(true));
            KeyboardQuickSwitchTaskView taskAt2 = getTaskAt(i4);
            if (taskAt2 != null) {
                animatorSet.play(taskAt2.getFocusAnimator(false));
            }
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.KeyboardQuickSwitchView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    taskAt.requestAccessibilityFocus();
                    int i6 = i4;
                    if (i6 == -1) {
                        int i7 = i5;
                        if (i7 != 0) {
                            i7 = KeyboardQuickSwitchView.this.getTaskAt(i7 + (-1)) == null ? i5 : i5 - 1;
                        }
                        KeyboardQuickSwitchView.A(KeyboardQuickSwitchView.this, i7, i7 != i5);
                    } else {
                        int i8 = i5;
                        if (i8 > i6 || i8 == 0) {
                            if (KeyboardQuickSwitchView.this.mIsRtl) {
                                KeyboardQuickSwitchView.B(KeyboardQuickSwitchView.this, taskAt);
                            } else {
                                KeyboardQuickSwitchView.C(KeyboardQuickSwitchView.this, taskAt);
                            }
                        } else if (KeyboardQuickSwitchView.this.mIsRtl) {
                            KeyboardQuickSwitchView.C(KeyboardQuickSwitchView.this, taskAt);
                        } else {
                            KeyboardQuickSwitchView.B(KeyboardQuickSwitchView.this, taskAt);
                        }
                    }
                    if (KeyboardQuickSwitchView.this.mViewCallbacks != null) {
                        KeyboardQuickSwitchViewController.this.mCurrentFocusIndex = i5;
                    }
                }
            });
            animatorSet.start();
        }
    }

    public final void applyLoadPlan(TaskbarOverlayContext taskbarOverlayContext, List list, int i4, boolean z4, final int i5, KeyboardQuickSwitchViewController.ViewCallbacks viewCallbacks) {
        KeyboardQuickSwitchView$$ExternalSyntheticLambda3 keyboardQuickSwitchView$$ExternalSyntheticLambda3;
        KeyboardQuickSwitchView$$ExternalSyntheticLambda3 keyboardQuickSwitchView$$ExternalSyntheticLambda32;
        this.mViewCallbacks = viewCallbacks;
        Resources resources = taskbarOverlayContext.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.keyboard_quick_switch_taskview_width);
        LayoutInflater from = LayoutInflater.from(taskbarOverlayContext);
        int min = Math.min(6, list.size());
        KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView = null;
        final int i6 = 0;
        while (true) {
            boolean z5 = true;
            if (i6 >= min) {
                break;
            }
            if (i6 != min - 1 || i4 != 0) {
                z5 = false;
            }
            KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView2 = (KeyboardQuickSwitchTaskView) from.inflate(R.layout.keyboard_quick_switch_taskview, (ViewGroup) this.mContent, false);
            keyboardQuickSwitchTaskView2.setId(View.generateViewId());
            keyboardQuickSwitchTaskView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    KeyboardQuickSwitchView.s(KeyboardQuickSwitchView.this, i6);
                }
            });
            androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d(dimensionPixelSize, this.mTaskViewHeight);
            if (keyboardQuickSwitchTaskView != null) {
                dVar.f2854s = keyboardQuickSwitchTaskView.getId();
            } else {
                dVar.f2855t = 0;
            }
            dVar.f2835i = 0;
            dVar.f2841l = 0;
            dVar.setMarginStart(this.mSpacing);
            if (z5) {
                dVar.f2857v = 0;
                dVar.setMarginEnd(this.mSpacing);
                dVar.f2797E = 1.0f;
            }
            GroupTask groupTask = (GroupTask) list.get(i6);
            Task task = groupTask.task1;
            Task task2 = groupTask.task2;
            if (z4) {
                KeyboardQuickSwitchViewController.ViewCallbacks viewCallbacks2 = this.mViewCallbacks;
                Objects.requireNonNull(viewCallbacks2);
                keyboardQuickSwitchView$$ExternalSyntheticLambda3 = new KeyboardQuickSwitchView$$ExternalSyntheticLambda3(viewCallbacks2);
            } else {
                keyboardQuickSwitchView$$ExternalSyntheticLambda3 = null;
            }
            if (z4) {
                KeyboardQuickSwitchViewController.ViewCallbacks viewCallbacks3 = this.mViewCallbacks;
                Objects.requireNonNull(viewCallbacks3);
                keyboardQuickSwitchView$$ExternalSyntheticLambda32 = new KeyboardQuickSwitchView$$ExternalSyntheticLambda3(viewCallbacks3);
            } else {
                keyboardQuickSwitchView$$ExternalSyntheticLambda32 = null;
            }
            keyboardQuickSwitchTaskView2.setThumbnails(task, task2, keyboardQuickSwitchView$$ExternalSyntheticLambda3, keyboardQuickSwitchView$$ExternalSyntheticLambda32);
            this.mContent.addView(keyboardQuickSwitchTaskView2, dVar);
            i6++;
            keyboardQuickSwitchTaskView = keyboardQuickSwitchTaskView2;
        }
        if (i4 > 0) {
            HashMap hashMap = new HashMap();
            hashMap.put("count", Integer.valueOf(i4));
            String format = new MessageFormat(resources.getString(R.string.quick_switch_overflow), Locale.getDefault()).format(hashMap);
            KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView3 = (KeyboardQuickSwitchTaskView) from.inflate(R.layout.keyboard_quick_switch_overview, (ViewGroup) this, false);
            keyboardQuickSwitchTaskView3.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    KeyboardQuickSwitchView.r(KeyboardQuickSwitchView.this);
                }
            });
            ((TextView) keyboardQuickSwitchTaskView3.findViewById(R.id.text)).setText(format);
            androidx.constraintlayout.widget.d dVar2 = new androidx.constraintlayout.widget.d(dimensionPixelSize, this.mTaskViewHeight);
            if (keyboardQuickSwitchTaskView == null) {
                dVar2.f2855t = 0;
            } else {
                dVar2.f2857v = 0;
                dVar2.f2854s = keyboardQuickSwitchTaskView.getId();
            }
            dVar2.f2835i = 0;
            dVar2.f2841l = 0;
            dVar2.setMarginEnd(this.mSpacing);
            dVar2.setMarginStart(this.mSpacing);
            this.mContent.addView(keyboardQuickSwitchTaskView3, dVar2);
        }
        this.mDisplayingRecentTasks = !list.isEmpty();
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.launcher3.taskbar.KeyboardQuickSwitchView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                KeyboardQuickSwitchView.z(KeyboardQuickSwitchView.this, i5);
                KeyboardQuickSwitchView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }

    public final Animator getCloseAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator animateToValue = this.mOutlineAnimationProgress.animateToValue(0.0f);
        animateToValue.setDuration(333L);
        animateToValue.setInterpolator(CLOSE_OUTLINE_INTERPOLATOR);
        animatorSet.play(animateToValue);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, ViewGroup.ALPHA, 1.0f, 0.0f);
        ofFloat.setStartDelay(67L);
        ofFloat.setDuration(83L);
        animatorSet.play(ofFloat);
        Object obj = this.mDisplayingRecentTasks ? this.mScrollView : this.mNoRecentItemsPane;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(obj, ViewGroup.TRANSLATION_Y, 0.0f, -Utilities.dpToPx(40.0f));
        ofFloat2.setDuration(333L);
        ofFloat2.setInterpolator(CLOSE_TRANSLATION_Y_INTERPOLATOR);
        animatorSet.play(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(obj, ViewGroup.ALPHA, 1.0f, 0.0f);
        ofFloat3.setDuration(83L);
        animatorSet.play(ofFloat3);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.KeyboardQuickSwitchView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                if (KeyboardQuickSwitchView.this.mOpenAnimation != null) {
                    KeyboardQuickSwitchView.this.mOpenAnimation.cancel();
                }
            }
        });
        return animatorSet;
    }

    public final KeyboardQuickSwitchTaskView getTaskAt(int i4) {
        if (!this.mDisplayingRecentTasks || i4 < 0 || i4 >= this.mContent.getChildCount()) {
            return null;
        }
        return (KeyboardQuickSwitchTaskView) this.mContent.getChildAt(i4);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mNoRecentItemsPane = findViewById(R.id.no_recent_items_pane);
        this.mScrollView = (HorizontalScrollView) findViewById(R.id.scroll_view);
        this.mContent = (ConstraintLayout) findViewById(R.id.content);
        Resources resources = getResources();
        this.mTaskViewHeight = resources.getDimensionPixelSize(R.dimen.keyboard_quick_switch_taskview_height);
        this.mSpacing = resources.getDimensionPixelSize(R.dimen.keyboard_quick_switch_view_spacing);
        this.mOutlineRadius = resources.getDimensionPixelSize(R.dimen.keyboard_quick_switch_view_radius);
        this.mIsRtl = Utilities.isRtl(resources);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onKeyUp(int r11, android.view.KeyEvent r12) {
        /*
            r10 = this;
            com.android.launcher3.taskbar.KeyboardQuickSwitchViewController$ViewCallbacks r0 = r10.mViewCallbacks
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L98
            boolean r3 = r10.mIsRtl
            boolean r4 = r10.mDisplayingRecentTasks
            r5 = 21
            r6 = 111(0x6f, float:1.56E-43)
            r7 = 22
            r8 = 68
            r9 = 61
            if (r11 == r9) goto L1f
            if (r11 == r7) goto L1f
            if (r11 == r5) goto L1f
            if (r11 == r8) goto L1f
            if (r11 == r6) goto L1f
            goto L29
        L1f:
            com.android.launcher3.taskbar.KeyboardQuickSwitchViewController r0 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.this
            if (r11 == r8) goto L92
            if (r11 != r6) goto L27
            goto L92
        L27:
            if (r4 != 0) goto L2c
        L29:
            r0 = r2
            goto L96
        L2c:
            if (r11 != r9) goto L34
            boolean r4 = r12.isShiftPressed()
            if (r4 != 0) goto L3c
        L34:
            if (r11 != r7) goto L38
            if (r3 != 0) goto L3c
        L38:
            if (r11 != r5) goto L3e
            if (r3 != 0) goto L3e
        L3c:
            r3 = r1
            goto L3f
        L3e:
            r3 = r2
        L3f:
            com.android.launcher3.taskbar.KeyboardQuickSwitchController$ControllerCallbacks r4 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.c(r0)
            com.android.launcher3.taskbar.KeyboardQuickSwitchController r4 = com.android.launcher3.taskbar.KeyboardQuickSwitchController.this
            java.util.List r5 = com.android.launcher3.taskbar.KeyboardQuickSwitchController.e(r4)
            int r5 = r5.size()
            int r4 = com.android.launcher3.taskbar.KeyboardQuickSwitchController.d(r4)
            if (r4 != 0) goto L55
            r4 = r2
            goto L56
        L55:
            r4 = r1
        L56:
            int r5 = r5 + r4
            int r4 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.d(r0)
            r6 = -1
            if (r4 != r6) goto L64
            if (r5 <= r1) goto L62
            r3 = r1
            goto L7f
        L62:
            r3 = r2
            goto L7f
        L64:
            if (r3 == 0) goto L79
            int r3 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.d(r0)
            if (r3 != 0) goto L6e
            int r5 = r5 - r1
            goto L74
        L6e:
            int r3 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.d(r0)
            int r5 = r3 + (-1)
        L74:
            int r3 = java.lang.Math.max(r2, r5)
            goto L7f
        L79:
            int r3 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.d(r0)
            int r3 = r3 + r1
            int r3 = r3 % r5
        L7f:
            int r4 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.d(r0)
            if (r4 != r3) goto L86
            goto L95
        L86:
            com.android.launcher3.taskbar.KeyboardQuickSwitchView r4 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.e(r0)
            int r0 = com.android.launcher3.taskbar.KeyboardQuickSwitchViewController.d(r0)
            r4.animateFocusMove(r0, r3)
            goto L95
        L92:
            r0.closeQuickSwitchView(r1)
        L95:
            r0 = r1
        L96:
            if (r0 != 0) goto La0
        L98:
            boolean r10 = super.onKeyUp(r11, r12)
            if (r10 == 0) goto L9f
            goto La0
        L9f:
            r1 = r2
        La0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.KeyboardQuickSwitchView.onKeyUp(int, android.view.KeyEvent):boolean");
    }

    public KeyboardQuickSwitchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyboardQuickSwitchView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public KeyboardQuickSwitchView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mOutlineAnimationProgress = new AnimatedFloat(new Runnable() { // from class: com.android.launcher3.taskbar.j
            @Override // java.lang.Runnable
            public final void run() {
                KeyboardQuickSwitchView.this.invalidateOutline();
            }
        });
    }
}
