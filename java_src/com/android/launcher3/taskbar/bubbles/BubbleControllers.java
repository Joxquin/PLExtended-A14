package com.android.launcher3.taskbar.bubbles;

import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.RunnableList;
/* loaded from: classes.dex */
public final class BubbleControllers {
    public final BubbleBarController bubbleBarController;
    public final BubbleBarViewController bubbleBarViewController;
    public final BubbleDismissController bubbleDismissController;
    public final BubbleDragController bubbleDragController;
    public final BubbleStashController bubbleStashController;
    public final BubbleStashedHandleViewController bubbleStashedHandleViewController;
    private final RunnableList mPostInitRunnables = new RunnableList();

    public BubbleControllers(BubbleBarController bubbleBarController, BubbleBarViewController bubbleBarViewController, BubbleStashController bubbleStashController, BubbleStashedHandleViewController bubbleStashedHandleViewController, BubbleDragController bubbleDragController, BubbleDismissController bubbleDismissController) {
        this.bubbleBarController = bubbleBarController;
        this.bubbleBarViewController = bubbleBarViewController;
        this.bubbleStashController = bubbleStashController;
        this.bubbleStashedHandleViewController = bubbleStashedHandleViewController;
        this.bubbleDragController = bubbleDragController;
        this.bubbleDismissController = bubbleDismissController;
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.bubbleBarController.init(this);
        this.bubbleBarViewController.init(taskbarControllers, this);
        this.bubbleStashedHandleViewController.init(this);
        this.bubbleStashController.init(taskbarControllers, this);
        this.bubbleDragController.init(this);
        this.bubbleDismissController.init(this);
        this.mPostInitRunnables.executeAllAndDestroy();
    }

    public final void runAfterInit(Z0.a aVar) {
        this.mPostInitRunnables.add(aVar);
    }
}
