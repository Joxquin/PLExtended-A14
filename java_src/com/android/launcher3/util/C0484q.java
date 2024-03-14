package com.android.launcher3.util;

import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import java.util.HashSet;
import java.util.Objects;
/* renamed from: com.android.launcher3.util.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0484q implements LauncherBindableItemsContainer$ItemOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5309a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ HashSet f5310b;

    public /* synthetic */ C0484q(HashSet hashSet, int i4) {
        this.f5309a = i4;
        this.f5310b = hashSet;
    }

    @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
    public final boolean evaluate(View view, ItemInfo itemInfo) {
        int i4 = this.f5309a;
        PreloadIconDrawable preloadIconDrawable = null;
        boolean z4 = true;
        HashSet hashSet = this.f5310b;
        switch (i4) {
            case 0:
                if ((view instanceof BubbleTextView) && hashSet.contains(itemInfo)) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                    BubbleTextView bubbleTextView = (BubbleTextView) view;
                    FastBitmapDrawable icon = bubbleTextView.getIcon();
                    boolean z5 = icon instanceof PreloadIconDrawable;
                    if (!z5 || !((PreloadIconDrawable) icon).hasNotCompleted()) {
                        z4 = false;
                    }
                    if (workspaceItemInfo.hasStatusFlag(3) != z4 && z5) {
                        preloadIconDrawable = (PreloadIconDrawable) icon;
                    }
                    bubbleTextView.applyFromWorkspaceItem(workspaceItemInfo, preloadIconDrawable);
                } else if ((itemInfo instanceof FolderInfo) && (view instanceof FolderIcon)) {
                    Objects.requireNonNull(hashSet);
                    ((FolderIcon) view).updatePreviewItems(new r(hashSet, 0));
                }
                return false;
            default:
                if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView) && hashSet.contains(itemInfo)) {
                    ((BubbleTextView) view).applyLoadingState(null);
                } else if ((view instanceof PendingAppWidgetHostView) && (itemInfo instanceof LauncherAppWidgetInfo) && hashSet.contains(itemInfo)) {
                    ((PendingAppWidgetHostView) view).applyState();
                } else if ((view instanceof FolderIcon) && (itemInfo instanceof FolderInfo)) {
                    Objects.requireNonNull(hashSet);
                    ((FolderIcon) view).updatePreviewItems(new r(hashSet, 1));
                }
                return false;
        }
    }
}
