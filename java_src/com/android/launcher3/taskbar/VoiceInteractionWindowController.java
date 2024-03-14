package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class VoiceInteractionWindowController implements TaskbarControllers.LoggableTaskbarController, TaskbarControllers.BackgroundRendererController {
    private final TaskbarActivityContext context;
    private TaskbarControllers controllers;
    private final boolean isSeparateBackgroundEnabled;
    private boolean isVoiceInteractionWindowVisible;
    private final ViewTreeObserver.OnComputeInternalInsetsListener nonTouchableInsetsComputer;
    private View.OnAttachStateChangeListener pendingAttachedToWindowListener;
    private VoiceInteractionWindowController$init$1 separateWindowForTaskbarBackground;
    private WindowManager.LayoutParams separateWindowLayoutParams;
    private final TaskbarBackgroundRenderer taskbarBackgroundRenderer;

    public VoiceInteractionWindowController(TaskbarActivityContext context) {
        kotlin.jvm.internal.h.e(context, "context");
        this.context = context;
        this.isSeparateBackgroundEnabled = !DisplayController.isTransientTaskbar(context);
        this.taskbarBackgroundRenderer = new TaskbarBackgroundRenderer(context);
        this.nonTouchableInsetsComputer = VoiceInteractionWindowController$nonTouchableInsetsComputer$1.INSTANCE;
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String prefix, PrintWriter pw) {
        kotlin.jvm.internal.h.e(prefix, "prefix");
        kotlin.jvm.internal.h.e(pw, "pw");
        pw.println(prefix.concat("VoiceInteractionWindowController:"));
        pw.println(prefix + "\tisSeparateBackgroundEnabled=" + this.isSeparateBackgroundEnabled);
        boolean z4 = this.isVoiceInteractionWindowVisible;
        pw.println(prefix + "\tisVoiceInteractionWindowVisible=" + z4);
        VoiceInteractionWindowController$init$1 voiceInteractionWindowController$init$1 = this.separateWindowForTaskbarBackground;
        Boolean valueOf = voiceInteractionWindowController$init$1 != null ? Boolean.valueOf(voiceInteractionWindowController$init$1.isAttachedToWindow()) : null;
        pw.println(prefix + "\tisSeparateTaskbarBackgroundAttachedToWindow=" + valueOf);
    }

    public final TaskbarActivityContext getContext() {
        return this.context;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.launcher3.taskbar.VoiceInteractionWindowController$init$1] */
    public final void init(final TaskbarControllers controllers) {
        kotlin.jvm.internal.h.e(controllers, "controllers");
        this.controllers = controllers;
        if (this.isSeparateBackgroundEnabled) {
            final TaskbarActivityContext taskbarActivityContext = this.context;
            ?? r02 = new BaseDragLayer(taskbarActivityContext) { // from class: com.android.launcher3.taskbar.VoiceInteractionWindowController$init$1
                @Override // android.view.View
                public final void draw(Canvas canvas) {
                    TaskbarBackgroundRenderer taskbarBackgroundRenderer;
                    kotlin.jvm.internal.h.e(canvas, "canvas");
                    super.draw(canvas);
                    if (TaskbarControllers.this.taskbarStashController.isTaskbarVisibleAndNotStashing()) {
                        taskbarBackgroundRenderer = this.taskbarBackgroundRenderer;
                        taskbarBackgroundRenderer.draw(canvas);
                    }
                }

                @Override // android.view.ViewGroup, android.view.View
                public final void onAttachedToWindow() {
                    ViewTreeObserver.OnComputeInternalInsetsListener onComputeInternalInsetsListener;
                    super.onAttachedToWindow();
                    ViewTreeObserver viewTreeObserver = getViewTreeObserver();
                    onComputeInternalInsetsListener = this.nonTouchableInsetsComputer;
                    viewTreeObserver.addOnComputeInternalInsetsListener(onComputeInternalInsetsListener);
                }

                @Override // android.view.ViewGroup, android.view.View
                public final void onDetachedFromWindow() {
                    ViewTreeObserver.OnComputeInternalInsetsListener onComputeInternalInsetsListener;
                    super.onDetachedFromWindow();
                    ViewTreeObserver viewTreeObserver = getViewTreeObserver();
                    onComputeInternalInsetsListener = this.nonTouchableInsetsComputer;
                    viewTreeObserver.removeOnComputeInternalInsetsListener(onComputeInternalInsetsListener);
                }

                @Override // com.android.launcher3.views.BaseDragLayer
                public final void recreateControllers() {
                    this.mControllers = new TouchController[0];
                }
            };
            this.separateWindowForTaskbarBackground = r02;
            r02.recreateControllers();
            VoiceInteractionWindowController$init$1 voiceInteractionWindowController$init$1 = this.separateWindowForTaskbarBackground;
            if (voiceInteractionWindowController$init$1 != null) {
                voiceInteractionWindowController$init$1.setWillNotDraw(false);
            }
            WindowManager.LayoutParams createDefaultWindowLayoutParams = taskbarActivityContext.createDefaultWindowLayoutParams(2038, "VoiceInteractionTaskbarBackground");
            this.separateWindowLayoutParams = createDefaultWindowLayoutParams;
            createDefaultWindowLayoutParams.setSystemApplicationOverlay(true);
        }
    }

    public final void onDestroy() {
        setIsVoiceInteractionWindowVisible(false, true);
        VoiceInteractionWindowController$init$1 voiceInteractionWindowController$init$1 = this.separateWindowForTaskbarBackground;
        if (voiceInteractionWindowController$init$1 != null) {
            voiceInteractionWindowController$init$1.removeOnAttachStateChangeListener(this.pendingAttachedToWindowListener);
        }
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.BackgroundRendererController
    public final void setCornerRoundness(float f4) {
        if (this.isSeparateBackgroundEnabled) {
            this.taskbarBackgroundRenderer.setCornerRoundness(f4);
            VoiceInteractionWindowController$init$1 voiceInteractionWindowController$init$1 = this.separateWindowForTaskbarBackground;
            if (voiceInteractionWindowController$init$1 != null) {
                voiceInteractionWindowController$init$1.invalidate();
            }
        }
    }

    public final void setIsVoiceInteractionWindowVisible(boolean z4, boolean z5) {
        final m3.a aVar;
        if (this.isVoiceInteractionWindowVisible == z4) {
            return;
        }
        this.isVoiceInteractionWindowVisible = z4;
        float f4 = z4 ? 0.0f : 1.0f;
        TaskbarControllers taskbarControllers = this.controllers;
        if (taskbarControllers == null) {
            kotlin.jvm.internal.h.g("controllers");
            throw null;
        }
        Animator duration = taskbarControllers.taskbarViewController.getTaskbarIconAlpha().get(5).animateToValue(f4).setDuration(300L);
        TaskbarControllers taskbarControllers2 = this.controllers;
        if (taskbarControllers2 == null) {
            kotlin.jvm.internal.h.g("controllers");
            throw null;
        }
        Animator duration2 = taskbarControllers2.stashedHandleViewController.getStashedHandleAlpha().get(2).animateToValue(f4).setDuration(180L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(duration);
        animatorSet.play(duration2);
        boolean z6 = this.isSeparateBackgroundEnabled;
        if (!z6) {
            TaskbarControllers taskbarControllers3 = this.controllers;
            if (taskbarControllers3 == null) {
                kotlin.jvm.internal.h.g("controllers");
                throw null;
            }
            animatorSet.play(taskbarControllers3.taskbarDragLayerController.getAssistantBgTaskbar().animateToValue(f4).setDuration(300L));
        }
        animatorSet.start();
        if (z5) {
            animatorSet.end();
        }
        if (z6) {
            if (this.isVoiceInteractionWindowVisible) {
                this.context.addWindowView(this.separateWindowForTaskbarBackground, this.separateWindowLayoutParams);
                aVar = new m3.a() { // from class: com.android.launcher3.taskbar.VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1
                    {
                        super(0);
                    }

                    @Override // m3.a
                    public final Object invoke() {
                        TaskbarControllers taskbarControllers4;
                        taskbarControllers4 = VoiceInteractionWindowController.this.controllers;
                        if (taskbarControllers4 != null) {
                            taskbarControllers4.taskbarDragLayerController.setIsBackgroundDrawnElsewhere(true);
                            return e3.f.f9037a;
                        }
                        kotlin.jvm.internal.h.g("controllers");
                        throw null;
                    }
                };
            } else {
                TaskbarControllers taskbarControllers4 = this.controllers;
                if (taskbarControllers4 == null) {
                    kotlin.jvm.internal.h.g("controllers");
                    throw null;
                } else {
                    taskbarControllers4.taskbarDragLayerController.setIsBackgroundDrawnElsewhere(false);
                    aVar = new m3.a() { // from class: com.android.launcher3.taskbar.VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2
                        {
                            super(0);
                        }

                        @Override // m3.a
                        public final Object invoke() {
                            BaseDragLayer baseDragLayer;
                            TaskbarActivityContext context = VoiceInteractionWindowController.this.getContext();
                            baseDragLayer = VoiceInteractionWindowController.this.separateWindowForTaskbarBackground;
                            context.removeWindowView(baseDragLayer);
                            return e3.f.f9037a;
                        }
                    };
                }
            }
            if (z5) {
                aVar.invoke();
                return;
            }
            final VoiceInteractionWindowController$init$1 voiceInteractionWindowController$init$1 = this.separateWindowForTaskbarBackground;
            if (voiceInteractionWindowController$init$1 != null) {
                final m3.a aVar2 = new m3.a() { // from class: com.android.launcher3.taskbar.VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // m3.a
                    public final Object invoke() {
                        BaseDragLayer baseDragLayer;
                        baseDragLayer = VoiceInteractionWindowController.this.separateWindowForTaskbarBackground;
                        kotlin.jvm.internal.h.b(baseDragLayer);
                        TaskbarDragLayer dragLayer = VoiceInteractionWindowController.this.getContext().getDragLayer();
                        kotlin.jvm.internal.h.d(dragLayer, "context.dragLayer");
                        com.android.systemui.animation.C.a(baseDragLayer, dragLayer, aVar);
                        return e3.f.f9037a;
                    }
                };
                if (voiceInteractionWindowController$init$1.isAttachedToWindow()) {
                    aVar2.invoke();
                    return;
                }
                voiceInteractionWindowController$init$1.removeOnAttachStateChangeListener(this.pendingAttachedToWindowListener);
                View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.android.launcher3.taskbar.VoiceInteractionWindowController$runWhenAttachedToWindow$1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view) {
                        m3.a.this.invoke();
                        voiceInteractionWindowController$init$1.removeOnAttachStateChangeListener(this);
                        this.pendingAttachedToWindowListener = null;
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view) {
                    }
                };
                this.pendingAttachedToWindowListener = onAttachStateChangeListener;
                voiceInteractionWindowController$init$1.addOnAttachStateChangeListener(onAttachStateChangeListener);
            }
        }
    }
}
