package com.android.launcher3.dragndrop;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
/* loaded from: classes.dex */
public class AddItemDragLayer extends BaseDragLayer {
    public AddItemDragLayer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 1);
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public final void recreateControllers() {
        this.mControllers = new TouchController[0];
    }

    public AddItemDragLayer(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
