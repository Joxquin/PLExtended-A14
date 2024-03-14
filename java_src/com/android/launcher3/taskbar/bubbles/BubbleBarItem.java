package com.android.launcher3.taskbar.bubbles;
/* loaded from: classes.dex */
public abstract class BubbleBarItem {
    private String key;
    private BubbleView view;

    public BubbleBarItem(String str, BubbleView bubbleView) {
        this.key = str;
        this.view = bubbleView;
    }

    public final String getKey() {
        return this.key;
    }

    public BubbleView getView() {
        return this.view;
    }
}
