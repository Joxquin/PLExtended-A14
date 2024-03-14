package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.FloatArrayEvaluator;
import android.animation.ObjectAnimator;
import android.util.Property;
/* loaded from: classes.dex */
final class FolderPreviewItemAnim {
    public final float[] finalState;
    private final ObjectAnimator mAnimator;
    private final PreviewItemManager mItemManager;
    private final PreviewItemDrawingParams mParams;
    private static final Property PARAMS = new Property() { // from class: com.android.launcher3.folder.FolderPreviewItemAnim.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            FolderPreviewItemAnim folderPreviewItemAnim = (FolderPreviewItemAnim) obj;
            FolderPreviewItemAnim.sTempParamsArray[0] = folderPreviewItemAnim.mParams.scale;
            FolderPreviewItemAnim.sTempParamsArray[1] = folderPreviewItemAnim.mParams.transX;
            FolderPreviewItemAnim.sTempParamsArray[2] = folderPreviewItemAnim.mParams.transY;
            return FolderPreviewItemAnim.sTempParamsArray;
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            FolderPreviewItemAnim.b((FolderPreviewItemAnim) obj, (float[]) obj2);
        }
    };
    private static final PreviewItemDrawingParams sTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f);
    private static final float[] sTempParamsArray = new float[3];

    public FolderPreviewItemAnim(PreviewItemManager previewItemManager, final PreviewItemDrawingParams previewItemDrawingParams, int i4, int i5, int i6, int i7, int i8, final Runnable runnable) {
        this.mItemManager = previewItemManager;
        this.mParams = previewItemDrawingParams;
        previewItemDrawingParams.index = i6;
        PreviewItemDrawingParams previewItemDrawingParams2 = sTmpParams;
        previewItemManager.computePreviewItemDrawingParams(i6, i7, previewItemDrawingParams2);
        float[] fArr = {previewItemDrawingParams2.scale, previewItemDrawingParams2.transX, previewItemDrawingParams2.transY};
        this.finalState = fArr;
        previewItemManager.computePreviewItemDrawingParams(i4, i5, previewItemDrawingParams2);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this, PARAMS, new FloatArrayEvaluator(), new float[]{previewItemDrawingParams2.scale, previewItemDrawingParams2.transX, previewItemDrawingParams2.transY}, fArr);
        this.mAnimator = ofObject;
        ofObject.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderPreviewItemAnim.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
                previewItemDrawingParams.anim = null;
            }
        });
        ofObject.setDuration(i8);
    }

    public static void b(FolderPreviewItemAnim folderPreviewItemAnim, float[] fArr) {
        folderPreviewItemAnim.getClass();
        float f4 = fArr[0];
        PreviewItemDrawingParams previewItemDrawingParams = folderPreviewItemAnim.mParams;
        previewItemDrawingParams.scale = f4;
        previewItemDrawingParams.transX = fArr[1];
        previewItemDrawingParams.transY = fArr[2];
        folderPreviewItemAnim.mItemManager.onParamsChanged();
    }

    public final void cancel() {
        this.mAnimator.cancel();
    }

    public final void start() {
        this.mAnimator.start();
    }
}
