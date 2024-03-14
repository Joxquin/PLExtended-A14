package com.android.launcher3.taskbar;

import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.folder.Folder;
/* loaded from: classes.dex */
public final /* synthetic */ class P implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5055d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskbarActivityContext f5056e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ View f5057f;

    public /* synthetic */ P(TaskbarActivityContext taskbarActivityContext, View view, int i4) {
        this.f5055d = i4;
        this.f5056e = taskbarActivityContext;
        this.f5057f = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5055d) {
            case 0:
                this.f5056e.mControllers.taskbarPopupController.showForIcon((BubbleTextView) this.f5057f);
                return;
            default:
                TaskbarActivityContext.f(this.f5056e, (Folder) this.f5057f);
                return;
        }
    }
}
