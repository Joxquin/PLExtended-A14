package com.android.launcher3.taskbar;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.airbnb.lottie.LottieAnimationView;
import com.android.launcher3.Utilities;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes.dex */
public final class TaskbarEduTooltipController implements TaskbarControllers.LoggableTaskbarController {
    private final TaskbarActivityContext activityContext;
    private TaskbarControllers controllers;
    private TaskbarEduTooltip tooltip;

    public TaskbarEduTooltipController(TaskbarActivityContext activityContext) {
        kotlin.jvm.internal.h.e(activityContext, "activityContext");
        this.activityContext = activityContext;
    }

    private final void inflateTooltip(int i4) {
        TaskbarControllers taskbarControllers = this.controllers;
        if (taskbarControllers == null) {
            kotlin.jvm.internal.h.g("controllers");
            throw null;
        }
        TaskbarOverlayContext requestWindow = taskbarControllers.taskbarOverlayController.requestWindow();
        View inflate = requestWindow.mLayoutInflater.inflate(R.layout.taskbar_edu_tooltip, (ViewGroup) requestWindow.getDragLayer(), false);
        kotlin.jvm.internal.h.c(inflate, "null cannot be cast to non-null type com.android.launcher3.taskbar.TaskbarEduTooltip");
        TaskbarEduTooltip taskbarEduTooltip = (TaskbarEduTooltip) inflate;
        TaskbarControllers taskbarControllers2 = this.controllers;
        if (taskbarControllers2 == null) {
            kotlin.jvm.internal.h.g("controllers");
            throw null;
        }
        taskbarControllers2.taskbarAutohideSuspendController.updateFlag(8, true);
        taskbarEduTooltip.setOnCloseCallback(new m3.a() { // from class: com.android.launcher3.taskbar.TaskbarEduTooltipController$inflateTooltip$1
            {
                super(0);
            }

            @Override // m3.a
            public final Object invoke() {
                TaskbarControllers taskbarControllers3;
                TaskbarControllers taskbarControllers4;
                TaskbarEduTooltipController.this.tooltip = null;
                taskbarControllers3 = TaskbarEduTooltipController.this.controllers;
                if (taskbarControllers3 == null) {
                    kotlin.jvm.internal.h.g("controllers");
                    throw null;
                }
                taskbarControllers3.taskbarAutohideSuspendController.updateFlag(8, false);
                taskbarControllers4 = TaskbarEduTooltipController.this.controllers;
                if (taskbarControllers4 != null) {
                    taskbarControllers4.taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
                    return e3.f.f9037a;
                }
                kotlin.jvm.internal.h.g("controllers");
                throw null;
            }
        });
        taskbarEduTooltip.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.launcher3.taskbar.TaskbarEduTooltipController$createAccessibilityDelegate$1
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                Context context;
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                if (accessibilityNodeInfo != null) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.close, (view == null || (context = view.getContext()) == null) ? null : context.getText(R.string.taskbar_edu_close)));
                }
            }

            @Override // android.view.View.AccessibilityDelegate
            public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                List<CharSequence> text;
                Context context;
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
                boolean z4 = false;
                if (accessibilityEvent != null && accessibilityEvent.getEventType() == 32) {
                    z4 = true;
                }
                if (!z4 || (text = accessibilityEvent.getText()) == null) {
                    return;
                }
                text.add((view == null || (context = view.getContext()) == null) ? null : context.getText(R.string.taskbar_edu_a11y_title));
            }

            @Override // android.view.View.AccessibilityDelegate
            public final boolean performAccessibilityAction(View view, int i5, Bundle bundle) {
                if (i5 == R.id.close) {
                    TaskbarEduTooltipController.this.hide$2();
                    return true;
                }
                return super.performAccessibilityAction(view, i5, bundle);
            }
        });
        requestWindow.mLayoutInflater.inflate(i4, taskbarEduTooltip.getContent(), true);
        this.tooltip = taskbarEduTooltip;
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        if (printWriter != null) {
            printWriter.println(str + "TaskbarEduTooltipController:");
        }
        if (printWriter != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("\tisTooltipEnabled=");
            sb.append(!Utilities.isRunningInTestHarness());
            printWriter.println(sb.toString());
        }
        if (printWriter != null) {
            TaskbarEduTooltip taskbarEduTooltip = this.tooltip;
            boolean isOpen = taskbarEduTooltip != null ? taskbarEduTooltip.isOpen() : false;
            printWriter.println(str + "\tisOpen=" + isOpen);
        }
        if (printWriter != null) {
            int tooltipStep = getTooltipStep();
            printWriter.println(str + "\ttooltipStep=" + tooltipStep);
        }
    }

    public final int getTooltipStep() {
        OnboardingPrefs onboardingPrefs = this.activityContext.getOnboardingPrefs();
        if (onboardingPrefs != null) {
            return onboardingPrefs.getCount(OnboardingPrefs.TASKBAR_EDU_TOOLTIP_STEP);
        }
        return 2;
    }

    public final void hide$2() {
        TaskbarEduTooltip taskbarEduTooltip = this.tooltip;
        if (taskbarEduTooltip != null) {
            taskbarEduTooltip.close(true);
            e3.f fVar = e3.f.f9037a;
        }
    }

    public final void init(TaskbarControllers controllers) {
        kotlin.jvm.internal.h.e(controllers, "controllers");
        this.controllers = controllers;
    }

    public final boolean isBeforeTooltipFeaturesStep() {
        return (Utilities.isRunningInTestHarness() ^ true) && getTooltipStep() <= 1;
    }

    public final void maybeShowFeaturesEdu() {
        if (!(!Utilities.isRunningInTestHarness()) || getTooltipStep() > 1) {
            return;
        }
        TaskbarActivityContext taskbarActivityContext = this.activityContext;
        OnboardingPrefs onboardingPrefs = taskbarActivityContext.getOnboardingPrefs();
        if (onboardingPrefs != null) {
            onboardingPrefs.setEventCount(2, OnboardingPrefs.TASKBAR_EDU_TOOLTIP_STEP);
        }
        inflateTooltip(R.layout.taskbar_edu_features);
        TaskbarEduTooltip taskbarEduTooltip = this.tooltip;
        if (taskbarEduTooltip != null) {
            LottieAnimationView splitscreenAnim = (LottieAnimationView) taskbarEduTooltip.findViewById(R.id.splitscreen_animation);
            LottieAnimationView suggestionsAnim = (LottieAnimationView) taskbarEduTooltip.findViewById(R.id.suggestions_animation);
            LottieAnimationView settingsAnim = (LottieAnimationView) taskbarEduTooltip.findViewById(R.id.settings_animation);
            View findViewById = taskbarEduTooltip.findViewById(R.id.settings_edu);
            kotlin.jvm.internal.h.d(splitscreenAnim, "splitscreenAnim");
            TaskbarEduTooltipControllerKt.access$supportLightTheme(splitscreenAnim);
            kotlin.jvm.internal.h.d(suggestionsAnim, "suggestionsAnim");
            TaskbarEduTooltipControllerKt.access$supportLightTheme(suggestionsAnim);
            kotlin.jvm.internal.h.d(settingsAnim, "settingsAnim");
            TaskbarEduTooltipControllerKt.access$supportLightTheme(settingsAnim);
            if (DisplayController.isTransientTaskbar(taskbarActivityContext)) {
                splitscreenAnim.setAnimation(R.raw.taskbar_edu_splitscreen_transient);
                suggestionsAnim.setAnimation(R.raw.taskbar_edu_suggestions_transient);
                findViewById.setVisibility(8);
            } else {
                splitscreenAnim.setAnimation(R.raw.taskbar_edu_splitscreen_persistent);
                suggestionsAnim.setAnimation(R.raw.taskbar_edu_suggestions_persistent);
                findViewById.setVisibility(0);
            }
            ViewGroup content = taskbarEduTooltip.getContent();
            ViewGroup.LayoutParams layoutParams = content.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.width = -1;
            content.setLayoutParams(layoutParams);
            ViewGroup.LayoutParams layoutParams2 = taskbarEduTooltip.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
            if (DisplayController.isTransientTaskbar(taskbarActivityContext)) {
                marginLayoutParams.width = taskbarEduTooltip.getResources().getDimensionPixelSize(R.dimen.taskbar_edu_features_tooltip_width_transient);
                marginLayoutParams.bottomMargin += taskbarActivityContext.getDeviceProfile().taskbarHeight;
            } else {
                marginLayoutParams.width = taskbarEduTooltip.getResources().getDimensionPixelSize(R.dimen.taskbar_edu_features_tooltip_width_persistent);
            }
            taskbarEduTooltip.setLayoutParams(marginLayoutParams);
            View findViewById2 = taskbarEduTooltip.findViewById(R.id.done_button);
            if (findViewById2 != null) {
                findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.TaskbarEduTooltipController$maybeShowFeaturesEdu$1$3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TaskbarEduTooltipController.this.hide$2();
                    }
                });
            }
            taskbarEduTooltip.show();
        }
    }

    public final void maybeShowSwipeEdu() {
        if (!Utilities.isRunningInTestHarness()) {
            TaskbarActivityContext taskbarActivityContext = this.activityContext;
            if (!DisplayController.isTransientTaskbar(taskbarActivityContext) || getTooltipStep() > 0) {
                return;
            }
            OnboardingPrefs onboardingPrefs = taskbarActivityContext.getOnboardingPrefs();
            if (onboardingPrefs != null) {
                onboardingPrefs.setEventCount(1, OnboardingPrefs.TASKBAR_EDU_TOOLTIP_STEP);
            }
            inflateTooltip(R.layout.taskbar_edu_swipe);
            TaskbarEduTooltip taskbarEduTooltip = this.tooltip;
            if (taskbarEduTooltip != null) {
                View findViewById = taskbarEduTooltip.findViewById(R.id.swipe_animation);
                kotlin.jvm.internal.h.d(findViewById, "findViewById<LottieAnima…ew>(R.id.swipe_animation)");
                TaskbarEduTooltipControllerKt.access$supportLightTheme((LottieAnimationView) findViewById);
                taskbarEduTooltip.show();
            }
        }
    }
}
