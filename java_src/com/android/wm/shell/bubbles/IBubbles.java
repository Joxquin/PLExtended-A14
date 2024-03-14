package com.android.wm.shell.bubbles;

import android.os.IInterface;
/* loaded from: classes.dex */
public interface IBubbles extends IInterface {
    void collapseBubbles();

    void onBubbleDrag(String str, boolean z4);

    void registerBubbleListener(IBubblesListener iBubblesListener);

    void removeAllBubbles();

    void removeBubble(String str);

    void showBubble(String str, int i4, int i5);

    void unregisterBubbleListener(IBubblesListener iBubblesListener);
}
