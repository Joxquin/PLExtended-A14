package com.android.launcher3.taskbar;

import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class J implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((BubbleControllers) obj).bubbleStashController.showBubbleBar(true);
    }
}
