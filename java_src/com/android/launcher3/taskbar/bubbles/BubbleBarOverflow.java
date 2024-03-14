package com.android.launcher3.taskbar.bubbles;

import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class BubbleBarOverflow extends BubbleBarItem {
    private BubbleView view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BubbleBarOverflow(BubbleView view) {
        super("Overflow", view);
        h.e(view, "view");
        this.view = view;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BubbleBarOverflow) && h.a(this.view, ((BubbleBarOverflow) obj).view);
    }

    @Override // com.android.launcher3.taskbar.bubbles.BubbleBarItem
    public final BubbleView getView() {
        return this.view;
    }

    public final int hashCode() {
        return this.view.hashCode();
    }

    public final String toString() {
        BubbleView bubbleView = this.view;
        return "BubbleBarOverflow(view=" + bubbleView + ")";
    }
}
