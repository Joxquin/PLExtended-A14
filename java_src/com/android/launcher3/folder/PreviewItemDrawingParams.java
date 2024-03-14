package com.android.launcher3.folder;

import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.model.data.WorkspaceItemInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PreviewItemDrawingParams {
    public FolderPreviewItemAnim anim;
    public FastBitmapDrawable drawable;
    public boolean hidden;
    float index;
    public WorkspaceItemInfo item;
    float scale;
    float transX;
    float transY;

    public PreviewItemDrawingParams(float f4, float f5, float f6) {
        this.transX = f4;
        this.transY = f5;
        this.scale = f6;
    }

    public final void update(float f4, float f5, float f6) {
        FolderPreviewItemAnim folderPreviewItemAnim = this.anim;
        if (folderPreviewItemAnim != null) {
            float[] fArr = folderPreviewItemAnim.finalState;
            if (fArr[1] == f4 || fArr[2] == f5 || fArr[0] == f6) {
                return;
            }
            folderPreviewItemAnim.cancel();
        }
        this.transX = f4;
        this.transY = f5;
        this.scale = f6;
    }
}
