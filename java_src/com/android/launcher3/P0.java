package com.android.launcher3;

import android.graphics.Rect;
import android.view.View;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class P0 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4482a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4483b;

    public /* synthetic */ P0(int i4, Object obj) {
        this.f4482a = i4;
        this.f4483b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4482a) {
            case 0:
                Workspace workspace = (Workspace) this.f4483b;
                Integer num = (Integer) obj;
                workspace.removeView((View) workspace.mWorkspaceScreens.get(num.intValue()));
                workspace.mWorkspaceScreens.remove(num.intValue());
                workspace.mScreenOrder.removeValue(num.intValue());
                return;
            case 1:
                Workspace workspace2 = (Workspace) this.f4483b;
                Integer num2 = (Integer) obj;
                if (workspace2.mWorkspaceScreens.containsKey(num2.intValue())) {
                    return;
                }
                workspace2.insertNewWorkspaceScreen(num2.intValue(), workspace2.getChildCount());
                return;
            case 2:
                Workspace workspace3 = (Workspace) this.f4483b;
                Integer num3 = (Integer) obj;
                if (workspace3.mWorkspaceScreens.containsKey(num3.intValue())) {
                    return;
                }
                workspace3.insertNewWorkspaceScreen(num3.intValue(), workspace3.getChildCount());
                return;
            default:
                Rect rect = (Rect) this.f4483b;
                int i4 = Workspace.f4511d;
                ((CellLayout) obj).setPadding(rect.left, rect.top, rect.right, rect.bottom);
                return;
        }
    }
}
