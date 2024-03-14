package com.android.launcher3.folder;

import com.android.launcher3.CellLayout;
import com.android.launcher3.accessibility.FolderAccessibilityHelper;
import java.util.Comparator;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4602a;

    public /* synthetic */ c(int i4) {
        this.f4602a = i4;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f4602a) {
            case 0:
                return new FolderAccessibilityHelper((CellLayout) obj);
            default:
                Comparator comparator = Folder.ITEM_POS_COMPARATOR;
                return ((CharSequence) obj).toString();
        }
    }
}
