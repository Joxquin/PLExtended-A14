package com.android.launcher3.folder;

import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import java.util.Comparator;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements LauncherBindableItemsContainer$ItemOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4598a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4599b;

    public /* synthetic */ a(int i4, Object obj) {
        this.f4598a = i4;
        this.f4599b = obj;
    }

    @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
    public final boolean evaluate(View view, ItemInfo itemInfo) {
        int i4 = this.f4598a;
        Object obj = this.f4599b;
        switch (i4) {
            case 0:
                return !((Folder) obj).mItemsInReadingOrder.add(view);
            default:
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) obj;
                Comparator comparator = Folder.ITEM_POS_COMPARATOR;
                return itemInfo == workspaceItemInfo;
        }
    }
}
