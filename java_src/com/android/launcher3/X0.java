package com.android.launcher3;

import android.view.View;
import com.android.launcher3.Workspace;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class X0 implements LauncherBindableItemsContainer$ItemOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4515a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4516b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f4517c;

    public /* synthetic */ X0(int i4, Object obj, Object obj2) {
        this.f4515a = i4;
        this.f4516b = obj;
        this.f4517c = obj2;
    }

    @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
    public final boolean evaluate(View view, ItemInfo itemInfo) {
        int i4 = this.f4515a;
        Object obj = this.f4517c;
        Object obj2 = this.f4516b;
        switch (i4) {
            case 0:
                Workspace.DeferredWidgetRefresh.a((Workspace.DeferredWidgetRefresh) obj2, (ArrayList) obj, itemInfo, view);
                return false;
            default:
                Workspace workspace = (Workspace) obj2;
                Predicate predicate = (Predicate) obj;
                int i5 = Workspace.f4511d;
                workspace.getClass();
                if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView)) {
                    if (predicate.test(itemInfo)) {
                        ((BubbleTextView) view).applyDotState(itemInfo, true);
                    }
                } else if ((itemInfo instanceof FolderInfo) && (view instanceof FolderIcon)) {
                    FolderInfo folderInfo = (FolderInfo) itemInfo;
                    if (folderInfo.contents.stream().anyMatch(predicate)) {
                        FolderDotInfo folderDotInfo = new FolderDotInfo();
                        Iterator it = folderInfo.contents.iterator();
                        while (it.hasNext()) {
                            folderDotInfo.addDotInfo(workspace.mLauncher.getDotInfoForItem((WorkspaceItemInfo) it.next()));
                        }
                        ((FolderIcon) view).setDotInfo(folderDotInfo);
                    }
                }
                return false;
        }
    }
}
