package com.android.launcher3.dragndrop;

import J0.j;
import android.graphics.Rect;
import com.android.launcher3.util.SafeCloseable;
/* loaded from: classes.dex */
public interface DraggableView {
    default void getSourceVisualDragBounds(Rect rect) {
        getWorkspaceVisualDragBounds(rect);
    }

    int getViewType();

    default void getWorkspaceVisualDragBounds(Rect rect) {
    }

    default SafeCloseable prepareDrawDragView() {
        return new j();
    }
}
