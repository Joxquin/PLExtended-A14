package com.android.launcher3.folder;

import java.util.Comparator;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4600d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Folder f4601e;

    public /* synthetic */ b(Folder folder, int i4) {
        this.f4600d = i4;
        this.f4601e = folder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4600d) {
            case 0:
                Folder.a(this.f4601e);
                return;
            case 1:
                Folder folder = this.f4601e;
                Comparator comparator = Folder.ITEM_POS_COMPARATOR;
                folder.getClass();
                FolderNameInfos folderNameInfos = new FolderNameInfos();
                FolderNameProvider.newInstance(folder.getContext()).getSuggestedFolderName(folder.getContext(), folder.mInfo.contents, folderNameInfos);
                folder.mInfo.suggestedFolderNames = folderNameInfos;
                return;
            case 2:
                Folder folder2 = this.f4601e;
                Comparator comparator2 = Folder.ITEM_POS_COMPARATOR;
                folder2.announceAccessibilityChanges();
                return;
            default:
                Folder folder3 = this.f4601e;
                Comparator comparator3 = Folder.ITEM_POS_COMPARATOR;
                if (folder3.getItemCount() <= 1) {
                    folder3.replaceFolderWithFinalItem();
                    return;
                }
                return;
        }
    }
}
