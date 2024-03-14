package com.android.quickstep;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
public class SimpleOrientationTouchTransformer implements DisplayController.DisplayInfoChangeListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new X0());
    private OrientationRectF mOrientationRectF;

    public SimpleOrientationTouchTransformer(Context context) {
        MainThreadInitializedObject mainThreadInitializedObject = DisplayController.INSTANCE;
        ((DisplayController) mainThreadInitializedObject.get(context)).addChangeListener(this);
        onDisplayInfoChanged(context, ((DisplayController) mainThreadInitializedObject.get(context)).getInfo(), 31);
    }

    @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        if ((i4 & 3) == 0) {
            return;
        }
        Point point = info.currentSize;
        this.mOrientationRectF = new OrientationRectF(0.0f, 0.0f, point.y, point.x, info.rotation);
    }

    public void transform(MotionEvent motionEvent, int i4) {
        this.mOrientationRectF.applyTransformToRotation(motionEvent, i4, true);
    }
}
