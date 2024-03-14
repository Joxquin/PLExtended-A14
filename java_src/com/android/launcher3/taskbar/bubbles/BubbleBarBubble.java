package com.android.launcher3.taskbar.bubbles;

import android.graphics.Bitmap;
import android.graphics.Path;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class BubbleBarBubble extends BubbleBarItem {
    private String appName;
    private Bitmap badge;
    private int dotColor;
    private Path dotPath;
    private Bitmap icon;
    private com.android.wm.shell.common.bubbles.d info;
    private BubbleView view;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BubbleBarBubble(com.android.wm.shell.common.bubbles.d r3, com.android.launcher3.taskbar.bubbles.BubbleView r4, android.graphics.Bitmap r5, android.graphics.Bitmap r6, int r7, android.graphics.Path r8, java.lang.String r9) {
        /*
            r2 = this;
            java.lang.String r0 = "info"
            kotlin.jvm.internal.h.e(r3, r0)
            java.lang.String r0 = "view"
            kotlin.jvm.internal.h.e(r4, r0)
            java.lang.String r0 = "badge"
            kotlin.jvm.internal.h.e(r5, r0)
            java.lang.String r0 = "icon"
            kotlin.jvm.internal.h.e(r6, r0)
            java.lang.String r0 = r3.f6313d
            java.lang.String r1 = "info.key"
            kotlin.jvm.internal.h.d(r0, r1)
            r2.<init>(r0, r4)
            r2.info = r3
            r2.view = r4
            r2.badge = r5
            r2.icon = r6
            r2.dotColor = r7
            r2.dotPath = r8
            r2.appName = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.bubbles.BubbleBarBubble.<init>(com.android.wm.shell.common.bubbles.d, com.android.launcher3.taskbar.bubbles.BubbleView, android.graphics.Bitmap, android.graphics.Bitmap, int, android.graphics.Path, java.lang.String):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BubbleBarBubble) {
            BubbleBarBubble bubbleBarBubble = (BubbleBarBubble) obj;
            return h.a(this.info, bubbleBarBubble.info) && h.a(this.view, bubbleBarBubble.view) && h.a(this.badge, bubbleBarBubble.badge) && h.a(this.icon, bubbleBarBubble.icon) && this.dotColor == bubbleBarBubble.dotColor && h.a(this.dotPath, bubbleBarBubble.dotPath) && h.a(this.appName, bubbleBarBubble.appName);
        }
        return false;
    }

    public final Bitmap getBadge() {
        return this.badge;
    }

    public final int getDotColor() {
        return this.dotColor;
    }

    public final Path getDotPath() {
        return this.dotPath;
    }

    public final Bitmap getIcon() {
        return this.icon;
    }

    public final com.android.wm.shell.common.bubbles.d getInfo() {
        return this.info;
    }

    @Override // com.android.launcher3.taskbar.bubbles.BubbleBarItem
    public final BubbleView getView() {
        return this.view;
    }

    public final int hashCode() {
        int hashCode = this.view.hashCode();
        int hashCode2 = this.badge.hashCode();
        int hashCode3 = this.icon.hashCode();
        int hashCode4 = Integer.hashCode(this.dotColor);
        int hashCode5 = this.dotPath.hashCode();
        return this.appName.hashCode() + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (this.info.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final void setAppName(String str) {
        this.appName = str;
    }

    public final void setBadge(Bitmap bitmap) {
        h.e(bitmap, "<set-?>");
        this.badge = bitmap;
    }

    public final void setDotColor(int i4) {
        this.dotColor = i4;
    }

    public final void setDotPath(Path path) {
        this.dotPath = path;
    }

    public final void setIcon(Bitmap bitmap) {
        h.e(bitmap, "<set-?>");
        this.icon = bitmap;
    }

    public final void setInfo(com.android.wm.shell.common.bubbles.d dVar) {
        h.e(dVar, "<set-?>");
        this.info = dVar;
    }

    public final String toString() {
        com.android.wm.shell.common.bubbles.d dVar = this.info;
        BubbleView bubbleView = this.view;
        Bitmap bitmap = this.badge;
        Bitmap bitmap2 = this.icon;
        int i4 = this.dotColor;
        Path path = this.dotPath;
        String str = this.appName;
        return "BubbleBarBubble(info=" + dVar + ", view=" + bubbleView + ", badge=" + bitmap + ", icon=" + bitmap2 + ", dotColor=" + i4 + ", dotPath=" + path + ", appName=" + str + ")";
    }
}
