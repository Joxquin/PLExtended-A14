package com.android.launcher3.folder;

import android.animation.AnimatorSet;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Folder f4603a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AnimatorSet f4604b;

    public /* synthetic */ d(Folder folder, AnimatorSet animatorSet) {
        this.f4603a = folder;
        this.f4604b = animatorSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
        if (r4 >= 10) goto L18;
     */
    @Override // java.util.function.Consumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void accept(java.lang.Object r8) {
        /*
            r7 = this;
            com.android.launcher3.folder.Folder r0 = r7.f4603a
            android.animation.AnimatorSet r7 = r7.f4604b
            android.view.View r8 = (android.view.View) r8
            java.util.Comparator r1 = com.android.launcher3.folder.Folder.ITEM_POS_COMPARATOR
            r0.getClass()
            com.android.launcher3.CellLayout r8 = (com.android.launcher3.CellLayout) r8
            com.android.launcher3.config.FeatureFlags$BooleanFlag r0 = com.android.launcher3.config.FeatureFlags.ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS
            boolean r0 = r0.get()
            r1 = 1
            if (r0 == 0) goto L17
            goto L3c
        L17:
            com.android.launcher3.ShortcutAndWidgetContainer r0 = r8.getShortcutsAndWidgets()
            int r2 = r0.getChildCount()
            int r2 = r2 - r1
            r3 = 0
            r4 = r3
        L22:
            if (r2 < 0) goto L36
            android.view.View r5 = r0.getChildAt(r2)
            boolean r6 = r5 instanceof android.appwidget.AppWidgetHostView
            if (r6 == 0) goto L2d
            goto L3b
        L2d:
            boolean r5 = r5 instanceof com.android.launcher3.folder.FolderIcon
            if (r5 == 0) goto L33
            int r4 = r4 + 1
        L33:
            int r2 = r2 + (-1)
            goto L22
        L36:
            r0 = 10
            if (r4 < r0) goto L3b
            goto L3c
        L3b:
            r1 = r3
        L3c:
            boolean r0 = r8.isHardwareLayerEnabled()
            com.android.launcher3.folder.Folder$3 r2 = new com.android.launcher3.folder.Folder$3
            r2.<init>()
            r7.addListener(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.d.accept(java.lang.Object):void");
    }
}
